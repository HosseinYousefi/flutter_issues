import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/auth_form/auth_form_notifier.dart';
import '../../application/issue_list/issue_list_config.dart';
import '../../application/issue_list/issue_list_notifier.dart';
import '../../application/visited_issues/visited_issues_notifier.dart';
import '../../domain/issue/issue_list/entities/issue_filter.dart';
import '../../domain/issue/issue_list/entities/issue_order.dart';
import '../common/common_app_bar.dart';
import '../router/app_route.dart';
import '../router/app_router_delegate.dart';
import 'widgets/issue_list_tile.dart';

class IssueListView extends HookConsumerWidget {
  const IssueListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visitedIssues = ref.watch(visitedIssuesStateProvider);
    final issueFilter = ref.watch(issueFilterStateProvider);
    final issueOrder = ref.watch(issueOrderStateProvider);
    final issueFilterNotifier = ref.watch(issueFilterStateProvider.notifier);
    final issueOrderNotifier = ref.watch(issueOrderStateProvider.notifier);
    final state = ref.watch(
      issueListStateProvider(tuple2(issueFilter, issueOrder)),
    );
    final notifier = ref.watch(
      issueListStateProvider(tuple2(issueFilter, issueOrder)).notifier,
    );
    final authFormNotifier = ref.watch(authFormStateProvider.notifier);
    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Flutter Issues'),
        leading: IconButton(
          onPressed: authFormNotifier.loggedOut,
          icon: const Icon(Icons.logout),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton<IssueFilter>(
                icon: const Icon(Icons.filter_alt),
                value: issueFilter,
                items: const [
                  DropdownMenuItem(
                    value: IssueFilter.all(),
                    child: Text('All'),
                  ),
                  DropdownMenuItem(
                    value: IssueFilter.open(),
                    child: Text('Open'),
                  ),
                  DropdownMenuItem(
                    value: IssueFilter.closed(),
                    child: Text('Closed'),
                  ),
                ],
                onChanged: (issueFilter) {
                  issueFilterNotifier.state = issueFilter!;
                },
              ),
              DropdownButton<IssueOrder>(
                icon: const Icon(Icons.sort),
                value: issueOrder,
                items: const [
                  DropdownMenuItem(
                    value: IssueOrder.createdAt(SortDirection.desc),
                    child: Text('Created At: Desc'),
                  ),
                  DropdownMenuItem(
                    value: IssueOrder.createdAt(SortDirection.asc),
                    child: Text('Created At: Asc'),
                  ),
                ],
                onChanged: (issueOrder) {
                  issueOrderNotifier.state = issueOrder!;
                },
              ),
            ],
          ),
        ),
      ),
      body: state.when(
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        error: (failure) {
          return Center(
            child: Text(failure.message),
          );
        },
        data: (issueList) {
          return ListView.builder(
            itemCount: issueList.issues.length + 1,
            itemBuilder: (context, index) {
              if (index == issueList.issues.length) {
                return HookBuilder(
                  builder: (context) {
                    useEffect(() {
                      issueList.pageInfo.status.maybeWhen(
                        data: () {
                          // Fetch more if we are not currently fetching
                          notifier.moreLoaded();
                        },
                        orElse: () {
                          // Otherwise don't do anything
                        },
                      );
                      return null;
                    }, []);
                    return issueList.pageInfo.status.maybeWhen(
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (failure) => Center(
                        child: Text(failure.message),
                      ),
                      orElse: () => const Offstage(),
                    );
                  },
                );
              }
              final issue = issueList.issues[index];
              return IssueListTile(
                onTap: () {
                  ref.read(currentRouteProvider.notifier).state =
                      AppRoute.issueDetail(number: issue.number);
                },
                key: ValueKey('Issue#${issue.number}'),
                issue: issue,
                isVisited: visitedIssues.contains(issue.number),
              );
            },
          );
        },
      ),
    );
  }
}
