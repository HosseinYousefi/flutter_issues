import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/issue_label.dart';
import '../../entities/issue_state.dart';

part 'issue_list_item.freezed.dart';

@freezed
class IssueListItem with _$IssueListItem {
  const factory IssueListItem({
    required int number,
    required String title,
    required int commentCount,
    required DateTime createdAt,
    required List<IssueLabel> labels,
    required IssueState state,
  }) = _IssueListItem;
}
