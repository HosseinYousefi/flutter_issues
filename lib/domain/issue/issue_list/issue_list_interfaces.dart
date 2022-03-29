import '../../core/repo.dart';
import 'entities/issue_list.dart';

abstract class IIssueListRepo implements Repo<IssueList> {
  const IIssueListRepo();

  void loadMore(String endCursor);
}
