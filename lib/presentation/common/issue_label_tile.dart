import 'package:flutter/material.dart';

import '../../domain/issue/entities/issue_label.dart';

class IssueLabelTile extends StatelessWidget {
  final IssueLabel label;

  const IssueLabelTile({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 3, bottom: 2),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
        decoration: BoxDecoration(
          color: label.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label.title,
          style: theme.textTheme.titleSmall?.copyWith(
            color: ThemeData.estimateBrightnessForColor(label.color) ==
                    Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
    );
  }
}
