import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../domain/issue/entities/issue_state.dart';
import '../../../domain/issue/issue_list/entities/issue_list_item.dart';
import '../../common/issue_label_tile.dart';

class IssueListTile extends StatelessWidget {
  final IssueListItem issue;
  final VoidCallback? onTap;

  const IssueListTile({
    required this.issue,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              issue.state == IssueState.closed
                  ? Icons.check_circle_outline_rounded
                  : Icons.circle_outlined,
              color: issue.state == IssueState.closed
                  ? Colors.deepPurple
                  : Colors.green,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'flutter / flutter #${issue.number}',
                    style: theme.textTheme.caption,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    issue.title,
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    children: issue.labels
                        .map((label) => IssueLabelTile(label: label))
                        .toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              timeago.format(issue.createdAt, locale: 'en_short'),
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
