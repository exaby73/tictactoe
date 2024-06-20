import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/common/failure.dart';
import 'package:tictactoe/models/game.dart';

@singleton
class GameService {
  GameService(this._firebaseAuth, this._firestore);

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  String get uid => _firebaseAuth.currentUser!.uid;

  Future<Either<Failure, List<Game>>> getGames() async {
    try {
      final gamesSnapshot = await _firestore
          .collection('games')
          .where(
            Filter.or(
              Filter('player1', isEqualTo: uid),
              Filter('player2', isEqualTo: uid),
            ),
          )
          .orderBy('createdAt', descending: true)
          .get();

      return right(gamesSnapshot.docs.map(Game.fromDoc).toList());
    } on FirebaseException catch (e) {
      return left(_handleFirebaseException(e));
    } catch (e) {
      return left(const Failure.unknownError());
    }
  }

  Future<Either<Failure, Game>> createGame() async {
    try {
      late String gameId;

      var gameIdExists = true;
      while (gameIdExists) {
        gameId = _generateGameId();
        final gameSnapshot = await _firestore
            .collection('games')
            .where(
              Filter.and(
                Filter('id', isEqualTo: gameId),
                Filter.or(
                  Filter('player1', isEqualTo: uid),
                  Filter('player2', isEqualTo: uid),
                ),
              ),
            )
            .get();
        gameIdExists = gameSnapshot.docs.isNotEmpty;
      }

      final r = Random();
      final allowedSymbols = [Cell.X, Cell.O];
      final randIndex = r.nextInt(2);

      final game = Game(
        id: gameId,
        player1: uid,
        player1Symbol: allowedSymbols[randIndex],
        player2Symbol: allowedSymbols[1 - randIndex],
        createdAt: DateTime.now(),
        board: Board(
          cellMatrix: List.generate(
            3,
            (_) => List.generate(3, (_) => Cell.empty),
          ),
        ),
      );

      await _firestore.collection('games').doc(gameId).set(game.toJson());

      return right(game);
    } on FirebaseException catch (e) {
      return left(_handleFirebaseException(e));
    } catch (e, s) {
      debugPrint('Error: $e\n$s');
      return left(const Failure.unknownError());
    }
  }

  Future<Either<Failure, Stream<Game>>> getGameByGameId(String gameId) async {
    try {
      final gameDoc = await _firestore.collection('games').doc(gameId).get();
      if (!gameDoc.exists) {
        return left(const Failure.notFound());
      }

      final gameSnapshot =
          _firestore.collection('games').doc(gameId).snapshots();

      return right(gameSnapshot.map(Game.fromDoc));
    } on FirebaseException catch (e) {
      return left(_handleFirebaseException(e));
    } catch (e) {
      return left(const Failure.unknownError());
    }
  }

  Future<Either<Failure, Unit>> updateGame(Game game) async {
    try {
      await _firestore.collection('games').doc(game.id).update(game.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return left(_handleFirebaseException(e));
    } catch (e) {
      return left(const Failure.unknownError());
    }
  }

  String _generateGameId() {
    final r = Random();
    const letters = 'abcdefghijklmnopqrstuvwxyz';
    final characters = '$letters${letters.toUpperCase()}0123456789';
    return String.fromCharCodes(
      List.generate(
        6,
        (_) => characters.codeUnitAt(r.nextInt(characters.length)),
      ),
    );
  }

  Failure _handleFirebaseException(FirebaseException e) {
    debugPrint('FirebaseException: $e');
    final code = e.code;
    return switch (code) {
      'permission-denied' => const Failure.badRequest('Permission denied'),
      _ => Failure.unknownError('An error occured. Code: $code'),
    };
  }
}
