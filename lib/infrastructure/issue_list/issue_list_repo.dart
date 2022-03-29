import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:graphql/issue_list/issue_list.dart';
import 'package:graphql/schema/schema.schema.gql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/entities/page_info.dart';
import '../../domain/core/entities/page_status.dart';
import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue_list/entities/issue_label.dart';
import '../../domain/issue_list/entities/issue_list.dart';
import '../../domain/issue_list/entities/issue_list_item.dart';
import '../../domain/issue_list/issue_list_interfaces.dart';
import '../core/gql_client.dart';

final issueListRepoProvider = Provider<IIssueListRepo>((ref) {
  final client = ref.watch(gqlClientProvider);
  return IssueListRepo(client);
});

class IssueListRepo extends IIssueListRepo {
  final TypedLink _client;

  const IssueListRepo(this._client);

  @override
  Stream<Either<RepoFailure, IssueList>> watch() {
    return _client
        .request(GIssueListReq((b) => b
          ..vars.first = 10
          ..requestId = 'issueList'))
        .map((res) {
      if (res.hasErrors || res.data == null) {
        print(res.graphqlErrors);
        print(res.linkException);
        if (res.linkException != null) {
          return left(res.linkException!.toDomain());
        }
        return left(const RepoFailure.general());
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
                      color: Color(
                        int.parse(
                          label.color,
                          radix: 16,
                        ),
                      ),
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
  void loadMore() {}
}
