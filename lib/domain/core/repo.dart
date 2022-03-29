import 'package:dartz/dartz.dart';

import 'entities/repo_failure.dart';

abstract class Repo<T> {
  const Repo();

  Stream<Either<RepoFailure, T>> watch();
}
