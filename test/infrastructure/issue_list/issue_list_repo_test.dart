import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterissues/domain/core/entities/page_info.dart';
import 'package:flutterissues/domain/core/entities/page_status.dart';
import 'package:flutterissues/domain/core/entities/repo_failure.dart';
import 'package:flutterissues/domain/issue/entities/issue_label.dart';
import 'package:flutterissues/domain/issue/entities/issue_state.dart';
import 'package:flutterissues/domain/issue/issue_list/entities/issue_filter.dart';
import 'package:flutterissues/domain/issue/issue_list/entities/issue_list.dart';
import 'package:flutterissues/domain/issue/issue_list/entities/issue_list_item.dart';
import 'package:flutterissues/domain/issue/issue_list/entities/issue_order.dart';
import 'package:flutterissues/infrastructure/core/gql_client.dart';
import 'package:flutterissues/infrastructure/issue_list/issue_list_repo.dart';
import 'package:gql_exec/src/request.dart';
import 'package:gql_exec/src/response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _rawResponse = <String, dynamic>{
  'data': {
    'repository': {
      'issues': {
        'nodes': [
          {
            '__typename': 'Issue',
            'id': 'I_kwDOAeUeuM5GsJFE',
            'number': 101021,
            'labels': {
              'totalCount': 1,
              'nodes': [
                {'color': '000000', 'name': 'in triage'}
              ]
            },
            'comments': {'totalCount': 0},
            'title': '[Fonts] Icon request: auto_mode',
            'state': 'OPEN',
            'createdAt': '2022-03-30T06:55:56'
          }
        ],
        'pageInfo': {
          'endCursor':
              'Y3Vyc29yOnYyOpK5MjAyMi0wMy0zMFQwOTo1NTo1NiswMzowMM5GsJFE',
          'hasNextPage': true
        }
      }
    }
  }
};

final _parsedResult = IssueList(
  issues: [
    IssueListItem(
      number: 101021,
      title: '[Fonts] Icon request: auto_mode',
      commentCount: 0,
      createdAt: DateTime(2022, 3, 30, 6, 55, 56),
      labels: [
        const IssueLabel(title: 'in triage', color: Color(0xff000000)),
      ],
      state: IssueState.open,
    )
  ],
  pageInfo: const PageInfo(
    status: PageStatus.data(),
    endCursor: 'Y3Vyc29yOnYyOpK5MjAyMi0wMy0zMFQwOTo1NTo1NiswMzowMM5GsJFE',
  ),
);

class MockLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    if (request.operation.operationName == 'IssueList') {
      yield Response(
        response: _rawResponse,
        data: _rawResponse['data'],
      );
    } else {
      throw 'Incorrect Query';
    }
  }
}

void main() {
  // An example of unit testing.
  test(
    'watch() method of IssueListRepo correctly parses the results',
    () async {
      final container = ProviderContainer(overrides: [
        // Using MemoryStore instead of HiveStore for testing.
        storeProvider.overrideWithValue(AsyncData(MemoryStore())),
        gqlLinkProvider.overrideWithValue(MockLink()),
      ]);
      addTearDown(container.dispose);
      final repo = container.read(
        issueListRepoProvider(
          tuple2(
            const IssueFilter.all(),
            const IssueOrder.createdAt(SortDirection.desc),
          ),
        ),
      );
      final stream = repo.watch();
      expect(stream, emits(right<RepoFailure, IssueList>(_parsedResult)));
    },
  );
}
