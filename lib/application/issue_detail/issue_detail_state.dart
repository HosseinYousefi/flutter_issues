import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue/issue_detail/entities/issue_detail.dart';

part 'issue_detail_state.freezed.dart';

@freezed
class IssueDetailState with _$IssueDetailState {
  const factory IssueDetailState.loading() = _Loading;

  const factory IssueDetailState.data({
    required IssueDetail issueDetail,
  }) = _Data;

  const factory IssueDetailState.error({
    required RepoFailure failure,
  }) = _Error;
}
