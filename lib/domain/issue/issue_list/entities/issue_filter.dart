import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_filter.freezed.dart';

/// Which states of issues to show.
///
/// There are more filters available, however for this demo
/// we are only filtering based on the issue state.
@freezed
class IssueFilter with _$IssueFilter {
  const factory IssueFilter.open() = _Open;
  const factory IssueFilter.closed() = _Closed;
  const factory IssueFilter.all() = _All;
}
