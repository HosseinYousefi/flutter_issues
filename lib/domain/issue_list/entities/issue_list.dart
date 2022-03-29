import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entities/page_info.dart';
import 'issue_list_item.dart';

part 'issue_list.freezed.dart';

@freezed
class IssueList with _$IssueList {
  const factory IssueList({
    required List<IssueListItem> issues,
    required PageInfo pageInfo,
  }) = _IssueList;
}
