import 'dart:ui';

import 'package:ferry/ferry.dart';
import 'package:flutterissues/domain/core/entities/page_info.dart';
import 'package:flutterissues/domain/core/entities/page_status.dart';
import 'package:flutterissues/domain/issue_list/entities/issue_label.dart';
import 'package:flutterissues/domain/issue_list/entities/issue_list.dart';
import 'package:flutterissues/domain/core/entities/repo_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterissues/domain/issue_list/entities/issue_list_item.dart';
import 'package:flutterissues/domain/issue_list/issue_list_interfaces.dart';
import 'package:flutterissues/utils/extensions.dart';
import 'package:graphql/issue_list/issue_list.dart';
import 'package:graphql/schema/schema.schema.gql.dart';

class IssueListRepo extends IIssueListRepo {
  final Client _client;

  const IssueListRepo(this._client);

  @override
  Stream<Either<RepoFailure, IssueList>> watch() {
    return _client
        .request(GIssueListReq((b) => b
          ..vars.first = 10
          ..requestId = 'issueList'))
        .map((res) {
      if (res.hasErrors || res.data == null) {
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
                  .toIList(),
            );
          }).toIList(),
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
