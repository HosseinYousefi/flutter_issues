import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../application/issue_detail/issue_detail_notifier.dart';
import '../../application/visited_issues/visited_issues_notifier.dart';
import '../common/common_app_bar.dart';
import '../common/issue_state_icon.dart';

class IssueDetailView extends HookConsumerWidget {
  final int number;

  const IssueDetailView({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visitedIssuesNotifier = ref.watch(visitedIssuesNotifierProvider);
    useEffect(() {
      visitedIssuesNotifier.issueVisited(number);
      return null;
    }, []);
    final state = ref.watch(issueDetailStateProvider(number));
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CommonAppBar(title: Text('Issue #$number')),
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
        data: (issue) {
          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
            children: [
              Row(
                children: [
                  IssueStateIcon(state: issue.state),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      issue.title,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: Uri.parse(issue.authorPhoto).isAbsolute
                        ? NetworkImage(issue.authorPhoto)
                        : null,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        issue.author,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        timeago.format(issue.createdAt, locale: 'en_short'),
                        style: theme.textTheme.caption,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              MarkdownBody(data: issue.body),
            ],
          );
        },
      ),
    );
  }
}
