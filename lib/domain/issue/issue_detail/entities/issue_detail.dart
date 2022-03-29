import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/issue_label.dart';
import '../../entities/issue_state.dart';

part 'issue_detail.freezed.dart';

@freezed
class IssueDetail with _$IssueDetail {
  const factory IssueDetail({
    required int number,
    required String title,
    required int commentCount,
    required DateTime createdAt,
    required List<IssueLabel> labels,
    required IssueState state,
    required String author,
    required String authorPhoto,
    required String body,
  }) = _IssueDetail;
}
