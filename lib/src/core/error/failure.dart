sealed class Failure implements Exception {
  const Failure({required this.message, this.cause, this.stackTrace});

  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() => '$runtimeType: $message';
}

final class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    this.statusCode,
    super.cause,
    super.stackTrace,
  });

  final int? statusCode;
}

final class NoInternetFailure extends Failure {
  const NoInternetFailure({
    required super.message,
    super.cause,
    super.stackTrace,
  });
}

final class TimeoutFailure extends Failure {
  const TimeoutFailure({required super.message, super.cause, super.stackTrace});
}

final class CancellationFailure extends Failure {
  const CancellationFailure({
    required super.message,
    super.cause,
    super.stackTrace,
  });
}

final class ParsingFailure extends Failure {
  const ParsingFailure({required super.message, super.cause, super.stackTrace});
}

final class UnknownFailure extends Failure {
  const UnknownFailure({required super.message, super.cause, super.stackTrace});
}
