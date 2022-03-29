import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_failure.freezed.dart';

@freezed
class RepoFailure with _$RepoFailure {
  const factory RepoFailure.serverException({
    required String message,
  }) = _ServerException;
  const factory RepoFailure.general({
    @Default('General Error') String message,
  }) = _General;
}
