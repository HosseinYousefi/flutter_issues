import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:graphql/issue_detail/issue_detail.dart';
import 'package:graphql/schema/schema.schema.gql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue/entities/issue_label.dart';
import '../../domain/issue/entities/issue_state.dart';
import '../../domain/issue/issue_detail/entities/issue_detail.dart';
import '../../domain/issue/issue_detail/issue_detail_interfaces.dart';
import '../core/gql_client.dart';

final issueDetailRepoProvider =
    Provider.autoDispose.family<IIssueDetailRepo, int>((ref, number) {
  final client = ref.watch(gqlClientProvider);
  return IssueDetailRepo(client, number: number);
});

class IssueDetailRepo implements IIssueDetailRepo {
  final Client _client;
  final int number;

  const IssueDetailRepo(
    this._client, {
    required this.number,
  });

  @override
  Stream<Either<RepoFailure, IssueDetail>> watch() {
    return _client
        .request(GIssueDetailReq((b) => b..vars.number = number))
        .map((res) {
      final failure = res.getDomainFailure();
      if (failure != null) {
        return left(failure);
      }
      final issue = res.data!.repository!.issue!;
      return right(
        IssueDetail(
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
                  // TODO: repeating logic
                  color: Color(
                    0xFF000000 +
                        int.parse(
                          label.color,
                          radix: 16,
                        ),
                  ),
                ),
              )
              .toList(),
          body: issue.body,
        ),
      );
    });
  }
}
