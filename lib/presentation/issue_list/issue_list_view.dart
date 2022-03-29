import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/auth_form/auth_form_notifier.dart';
import '../../application/issue_list/issue_list_notifier.dart';
import '../common/common_app_bar.dart';
import '../router/app_route.dart';
import '../router/app_router_delegate.dart';
import 'widgets/issue_list_tile.dart';

class IssueListView extends HookConsumerWidget {
  const IssueListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(issueListStateProvider);
    final notifier = ref.watch(issueListStateProvider.notifier);
    final authFormNotifier = ref.watch(authFormStateProvider.notifier);
    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Flutter Issues'),
        leading: IconButton(
          onPressed: authFormNotifier.loggedOut,
          icon: const Icon(Icons.logout),
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
              );
            },
          );
        },
      ),
    );
  }
}
