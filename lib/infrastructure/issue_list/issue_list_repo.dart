import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:graphql/issue_list/issue_list.dart';
import 'package:graphql/schema/schema.schema.gql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/entities/page_info.dart' as app;
import '../../domain/core/entities/page_status.dart';
import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue/entities/issue_label.dart';
import '../../domain/issue/entities/issue_state.dart' as app;
import '../../domain/issue/issue_list/entities/issue_filter.dart';
import '../../domain/issue/issue_list/entities/issue_list.dart';
import '../../domain/issue/issue_list/entities/issue_list_item.dart';
import '../../domain/issue/issue_list/entities/issue_order.dart' as app;
import '../../domain/issue/issue_list/issue_list_interfaces.dart';
import '../core/gql_client.dart';
import '../core/utils.dart';

final issueListRepoProvider = Provider.autoDispose
    .family<IIssueListRepo, Tuple2<IssueFilter, app.IssueOrder>>(
        (ref, filterAndOrder) {
  final client = ref.watch(gqlClientProvider);
  return IssueListRepo(
    client,
    filter: filterAndOrder.value1,
    order: filterAndOrder.value2,
  );
});

class IssueListRepo implements IIssueListRepo {
  final Client _client;
  final IssueFilter filter;
  final app.IssueOrder order;

  const IssueListRepo(
    this._client, {
    required this.filter,
    required this.order,
  });

  GIssueListReq get _request => GIssueListReq(
        (b) => b
          ..requestId = 'issueList'
          ..vars.first = 10
          ..vars.filterBy = GIssueFilters((f) {
            f.states.addAll(filter.when(
              open: () => [GIssueState.OPEN],
              closed: () => [GIssueState.CLOSED],
              all: () => [GIssueState.OPEN, GIssueState.CLOSED],
            ));
            return f;
          }).toBuilder()
          ..vars.orderBy = GIssueOrder((o) {
            order.when(
              createdAt: (direction) {
                o.field = GIssueOrderField.CREATED_AT;
                o.direction = direction == app.SortDirection.asc
                    ? GOrderDirection.ASC
                    : GOrderDirection.DESC;
              },
            );
          }).toBuilder(),
      );

  @override
  Stream<Either<RepoFailure, IssueList>> watch() {
    return _client.request(_request).map((res) {
      final failure = res.getDomainFailure();
      if (failure != null) {
        return left(failure);
      }
      final issues = res.data!.repository!.issues;
      return right(
        IssueList(
          issues: issues.nodes!.map((issue) {
            return IssueListItem(
              number: issue.number,
              title: issue.title,
              commentCount: issue.comments.totalCount,
              createdAt: issue.createdAt,
              state: issue.state == GIssueState.OPEN
                  ? app.IssueState.open
                  : app.IssueState.closed,
              labels: issue.labels!.nodes!
                  .map(
                    (label) => IssueLabel(
                      title: label.name,
                      color: InfraUtils.stringToColor(label.color),
                    ),
                  )
                  .toList(),
            );
          }).toList(),
          pageInfo: app.PageInfo(
            status: const PageStatus.data(),
            endCursor: issues.pageInfo.endCursor!,
          ),
        ),
      );
    });
  }

  @override
  void loadMore(String endCursor) {
    _client.requestController.add(
      _request.rebuild(
        (r) => r
          ..vars.after = endCursor
          ..updateResult = (previous, result) =>
              previous?.rebuild((b) {
                b.repository.issues.pageInfo =
                    result?.repository?.issues.pageInfo.toBuilder();
                final newIssues = result?.repository?.issues.nodes;
                if (newIssues != null) {
                  b.repository.issues.nodes.addAll(newIssues);
                }
              }) ??
              result,
      ),
    );
  }
}
