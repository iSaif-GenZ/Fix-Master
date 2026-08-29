import 'package:dartz/dartz.dart';
import 'failures.dart';

Future<Either<Failure, T>> handleErrors<T>(Future<T> Function() action) async {
  try {
    final result = await action();
    return Right(result);
  } catch (e) {
    return Left(CacheFailure(message: e.toString()));
  }
}