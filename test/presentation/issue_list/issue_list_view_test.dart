import 'package:dartz/dartz.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterissues/domain/core/entities/page_info.dart';
import 'package:flutterissues/domain/core/entities/page_status.dart';
import 'package:flutterissues/domain/core/entities/repo_failure.dart';
import 'package:flutterissues/domain/issue/entities/issue_state.dart';
import 'package:flutterissues/domain/issue/issue_detail/entities/issue_detail.dart';
import 'package:flutterissues/domain/issue/issue_list/entities/issue_list.dart';
import 'package:flutterissues/domain/issue/issue_list/entities/issue_list_item.dart';
import 'package:flutterissues/domain/issue/issue_list/issue_list_interfaces.dart';
import 'package:flutterissues/infrastructure/auth/auth_service.dart';
import 'package:flutterissues/infrastructure/core/gql_client.dart';
import 'package:flutterissues/infrastructure/issue_detail/issue_detail_repo.dart';
import 'package:flutterissues/infrastructure/issue_list/issue_list_repo.dart';
import 'package:flutterissues/presentation/app.dart';
import 'package:flutterissues/presentation/issue_list/issue_list_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MockIssueListRepo implements IIssueListRepo {
  @override
  void loadMore(String endCursor) {
    // do nothing...
  }

  @override
  Stream<Either<RepoFailure, IssueList>> watch() {
    return Stream.value(
      right(
        IssueList(
          issues: [
            IssueListItem(
              number: 1,
              title: 'First Issue',
              commentCount: 0,
              createdAt: DateTime(2022),
              labels: [],
              state: IssueState.open,
            ),
            IssueListItem(
              number: 2,
              title: 'Second Issue',
              commentCount: 0,
              createdAt: DateTime(2022),
              labels: [],
              state: IssueState.closed,
            ),
          ],
          pageInfo: const PageInfo(
            endCursor: 'abc',
            status: PageStatus.noMoreData(),
          ),
        ),
      ),
    );
  }
}

class MockIssueDetailRepo implements IssueDetailRepo {
  @override
  final int number;

  const MockIssueDetailRepo(this.number);

  @override
  Stream<Either<RepoFailure, IssueDetail>> watch() {
    return Stream.value(
      right(
        IssueDetail(
          number: 1,
          title: 'First Issue',
          commentCount: 0,
          createdAt: DateTime(2022),
          labels: [],
          state: IssueState.open,
          author: 'Author 1',
          authorPhoto: '',
          body: '# The markdown for the first issue',
        ),
      ),
    );
  }
}

void main() {
  final overrides = [
    // Authenticating with a fake token.
    tokenProvider.overrideWithValue(const AsyncData('fake_token')),
    // Mocking the issue list repo
    issueListRepoProvider.overrideWithProvider(
      (filterAndOrder) => Provider.autoDispose(
        (_) => MockIssueListRepo(),
      ),
    ),
    // Mocking the issue detail repo
    issueDetailRepoProvider.overrideWithProvider(
      (number) => Provider.autoDispose(
        (_) => MockIssueDetailRepo(number),
      ),
    ),
  ];

  // An example widget test. When writing more tests, the overrides could be
  // further parametarized for easier behavioral customization.
  // For example the watch method in the repos could return a failure value instead
  // to test the error handling.
  testWidgets(
    'Tapping on an issue brings you to the issue detail page',
    (tester) async {
      await tester.pumpWidget(ProviderScope(
        overrides: [
          // Using MemoryStore instead of HiveStore for testing.
          storeProvider.overrideWithValue(AsyncData(MemoryStore())),
          ...overrides
        ],
        child: const App(),
      ));
      // Waiting for the loading animation to finish.
      await tester.pumpAndSettle();
      final firstIssue = find.byKey(const ValueKey('Issue#1'));
      await tester.tap(firstIssue);
      await tester.pumpAndSettle();
      final author = find.text('Author 1');
      expect(author, findsOneWidget);
    },
  );

  // An example for golden testing.
  testWidgets('Golden test', (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        // Using MemoryStore instead of HiveStore for testing.
        storeProvider.overrideWithValue(AsyncData(MemoryStore())),
        ...overrides
      ],
      child: const App(),
    ));
    // Waiting for the loading animation to finish.
    await tester.pumpAndSettle();
    await expectLater(
      find.byType(IssueListView),
      matchesGoldenFile('issue_list_view_light.png'),
    );
    final darkModeButton = find.byIcon(Icons.dark_mode_rounded);
    await tester.tap(darkModeButton);
    await tester.pumpAndSettle();
    await expectLater(
      find.byType(IssueListView),
      matchesGoldenFile('issue_list_view_dark.png'),
    );
  });
}
