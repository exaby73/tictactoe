import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
          .get();

      return right(
        gamesSnapshot.docs
            .map((doc) => Game.fromJson({'id': doc.id, ...doc.data()}))
            .toList(),
      );
    } on FirebaseException catch (e) {
      return left(_handleFirebaseException(e));
    } catch (e) {
      return left(const Failure.unknownError());
    }
  }

  Failure _handleFirebaseException(FirebaseException e) {
    final code = e.code;
    return switch (code) {
      'permission-denied' => const Failure.badRequest('Permission denied'),
      _ => Failure.unknownError('An error occured. Code: $code'),
    };
  }
}
