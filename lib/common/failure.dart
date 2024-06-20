import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.notFound() = NotFound;

  const factory Failure.networkError() = NetworkError;

  const factory Failure.badRequest(String message) = BadRequest;

  const factory Failure.unknownError([String? message]) = UnknownError;

  const factory Failure.serverError([String? message]) = ServerError;

  const Failure._();

  String get messageOrDefault {
    return switch (this) {
      NotFound() => 'Resource not found.',
      NetworkError() => 'Please check your internet connection and try again.',
      BadRequest(message: final m) => m,
      UnknownError(message: final m) => m ?? 'An unknown error occurred.',
      ServerError(message: final m) =>
        m ?? 'An error occurred on the server. Please try again later.',
    };
  }
}
