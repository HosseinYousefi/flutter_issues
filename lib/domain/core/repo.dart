import 'package:dartz/dartz.dart';
import 'package:flutterissues/domain/core/entities/repo_failure.dart';

abstract class Repo<T> {
  Stream<Either<RepoFailure, T>> watch();
}