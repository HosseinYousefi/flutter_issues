import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'issue_label.dart';

part 'issue_list_item.freezed.dart';

enum IssueStatus { open, closed }

@freezed
class IssueListItem with _$IssueListItem {
  const factory IssueListItem({
    required int number,
    required String title,
    required int commentCount,
    required DateTime createdAt,
    required IList<IssueLabel> labels,
    required IssueStatus status,
  }) = _IssueListItem;
}
