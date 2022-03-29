import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/issue/issue_list/entities/issue_filter.dart';
import '../../domain/issue/issue_list/entities/issue_order.dart';

final issueOrderStateProvider =
    StateProvider((_) => const IssueOrder.createdAt(SortDirection.desc));

final issueFilterStateProvider = StateProvider((_) => const IssueFilter.all());
