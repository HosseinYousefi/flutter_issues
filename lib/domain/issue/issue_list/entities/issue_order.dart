import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_order.freezed.dart';

enum SortDirection { asc, desc }

/// The order of issues used for sorting
///
/// There are more ways to order issues, but for this demo
/// we're only using the createdAt field.
@freezed
class IssueOrder with _$IssueOrder {
  const factory IssueOrder.createdAt(
    SortDirection sortDirection,
  ) = _CreatedAt;
}
