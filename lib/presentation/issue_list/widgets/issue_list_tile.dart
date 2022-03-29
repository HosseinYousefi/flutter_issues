import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../domain/issue/issue_list/entities/issue_list_item.dart';
import '../../common/issue_label_tile.dart';
import '../../common/issue_state_icon.dart';

class IssueListTile extends StatelessWidget {
  final IssueListItem issue;
  final VoidCallback? onTap;
  final bool isVisited;

  const IssueListTile({
    required this.issue,
    required this.isVisited,
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
            IssueStateIcon(state: issue.state),
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
            if (!isVisited)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: theme.colorScheme.primary,
                  radius: 2,
                ),
              ),
            Text(
              timeago.format(issue.createdAt, locale: 'en_short'),
              style: theme.textTheme.bodySmall?.copyWith(
                color: isVisited ? theme.hintColor : theme.colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
