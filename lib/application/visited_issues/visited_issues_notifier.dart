import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/issue/visited_issues/visited_issues_interface.dart';
import '../../infrastructure/visited_issues/visited_issues_service.dart';

final visitedIssuesNotifierProvider = Provider((ref) {
  final visitedIssuesService = ref.watch(visitedIssuesServiceProvider);
  return VisitedIssuesNotifier(visitedIssuesService);
});

/// Provider for the current state of the visited issues.
///
/// Depends on
/// * [visitedIssuesProvider]
final visitedIssuesStateProvider = Provider((ref) {
  return ref.watch(visitedIssuesProvider).asData!.value;
});

class VisitedIssuesNotifier {
  final IVisitedIssuesService _visitedIssuesService;

  const VisitedIssuesNotifier(this._visitedIssuesService);

  void issueVisited(int number) {
    _visitedIssuesService.markAsVisited(number);
  }
}
