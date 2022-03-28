import '../core/repo.dart';
import 'entities/issue_list.dart';

abstract class IIssueListRepo extends Repo<IssueList> {
  void loadMore();
}
