import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:graphql/issue_list/issue_list.dart';
import 'package:graphql/schema/schema.schema.gql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/entities/page_info.dart';
import '../../domain/core/entities/page_status.dart';
import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue/entities/issue_label.dart';
import '../../domain/issue/entities/issue_state.dart';
import '../../domain/issue/issue_list/entities/issue_list.dart';
import '../../domain/issue/issue_list/entities/issue_list_item.dart';
import '../../domain/issue/issue_list/issue_list_interfaces.dart';
import '../core/gql_client.dart';

final issueListRepoProvider = Provider<IIssueListRepo>((ref) {
  final client = ref.watch(gqlClientProvider);
  return IssueListRepo(client);
});

class IssueListRepo implements IIssueListRepo {
  final Client _client;

  const IssueListRepo(this._client);

  GIssueListReq get _request => GIssueListReq(
        (b) => b
          ..requestId = 'issueList'
          ..vars.first = 10,
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
                  ? IssueState.open
                  : IssueState.closed,
              labels: issue.labels!.nodes!
                  .map(
                    (label) => IssueLabel(
                      title: label.name,
                      color: Color(0xFF000000 +
                          int.parse(
                            label.color,
                            radix: 16,
                          )),
                    ),
                  )
                  .toList(),
            );
          }).toList(),
          pageInfo: PageInfo(
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
