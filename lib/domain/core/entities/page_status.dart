import 'package:freezed_annotation/freezed_annotation.dart';

import 'repo_failure.dart';

part 'page_status.freezed.dart';

@freezed
class PageStatus with _$PageStatus {
  const factory PageStatus.loading() = _Loading;
  const factory PageStatus.data() = _Data;
  const factory PageStatus.noMoreData() = _NoMoreData;
  const factory PageStatus.error({
    required RepoFailure failure,
  }) = _Error;
}
