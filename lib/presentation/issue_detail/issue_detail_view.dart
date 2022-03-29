import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/issue_detail/issue_detail_notifier.dart';
import '../common/common_app_bar.dart';

class IssueDetailView extends HookConsumerWidget {
  final int number;

  const IssueDetailView({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(issueDetailStateProvider(number));
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
        data: (issueData) {
          return Markdown(data: issueData.body);
        },
      ),
    );
  }
}
