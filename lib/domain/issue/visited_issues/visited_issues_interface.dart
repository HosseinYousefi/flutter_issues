abstract class IVisitedIssuesService {
  Stream<Set<int>> get onVisitedIssuesChanged;
  void markAsVisited(int number);
}
