abstract class Failure {
  final String message;
  const Failure(this.message);
}

class CacheFailure extends Failure {
  const CacheFailure({required String message}) : super(message);
}