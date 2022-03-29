import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/issue/visited_issues/visited_issues_interface.dart';
import '../core/gql_client.dart';

final visitedIssuesServiceProvider = Provider<IVisitedIssuesService>((ref) {
  final store = ref.watch(storeProvider).asData!.value;
  return VisitedIssuesService(store);
});

final visitedIssuesProvider = StreamProvider((ref) {
  final visitedIssuesService = ref.watch(visitedIssuesServiceProvider);
  return visitedIssuesService.onVisitedIssuesChanged;
});

class VisitedIssuesService implements IVisitedIssuesService {
  final Store store;

  const VisitedIssuesService(this.store);

  @override
  void markAsVisited(int number) {
    store.put('visited', {
      ...?store.get('visited'),
      number.toString(): true,
    });
  }

  @override
  Stream<Set<int>> get onVisitedIssuesChanged {
    return store.watch('visited').map((m) {
      if (m == null) return <int>{};
      return m.keys.map(int.parse).toSet();
    });
  }
}
