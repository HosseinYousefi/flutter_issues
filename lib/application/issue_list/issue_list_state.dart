import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue_list/entities/issue_list.dart';

part 'issue_list_state.freezed.dart';

@freezed
class IssueListState with _$IssueListState {
  const factory IssueListState.loading() = _Loading;

  const factory IssueListState.data({
    required IssueList issueList,
  }) = _Data;

  const factory IssueListState.error({
    required RepoFailure failure,
  }) = _Error;
}
