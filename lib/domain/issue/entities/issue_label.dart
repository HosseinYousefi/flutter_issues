import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_label.freezed.dart';

@freezed
class IssueLabel with _$IssueLabel {
  const factory IssueLabel({
    required String title,
    required Color color,
  }) = _IssueLabel;
}
