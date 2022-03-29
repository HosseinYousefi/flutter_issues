import 'package:flutter/material.dart';

import '../../domain/issue/entities/issue_state.dart';

class IssueStateIcon extends StatelessWidget {
  final IssueState state;

  const IssueStateIcon({
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      state == IssueState.closed
          ? Icons.check_circle_outline_rounded
          : Icons.circle_outlined,
      color: state == IssueState.closed ? Colors.deepPurple : Colors.green,
    );
  }
}
