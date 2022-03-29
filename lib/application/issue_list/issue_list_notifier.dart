import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/entities/page_status.dart';
import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue/issue_list/entities/issue_filter.dart';
import '../../domain/issue/issue_list/entities/issue_list.dart';
import '../../domain/issue/issue_list/entities/issue_order.dart';
import '../../domain/issue/issue_list/issue_list_interfaces.dart';
import '../../infrastructure/issue_list/issue_list_repo.dart';
import 'issue_list_state.dart';

final issueListStateProvider = StateNotifierProvider.autoDispose
    .family<IssueListNotifier, IssueListState, Tuple2<IssueFilter, IssueOrder>>(
        (ref, filterAndOrder) {
  final issueListRepo = ref.watch(issueListRepoProvider(filterAndOrder));
  return IssueListNotifier(issueListRepo);
});

class IssueListNotifier extends StateNotifier<IssueListState> {
  final IIssueListRepo _issueListRepo;

  StreamSubscription<Either<RepoFailure, IssueList>>? _subscription;

  IssueListNotifier(this._issueListRepo)
      : super(const IssueListState.loading()) {
    _subscription = _issueListRepo.watch().listen((event) {
      event.fold(
        (failure) {
          // If data already exists, we keep the data and only show the failure
          // for the pagination. Otherwise the whole state is error.
          state = state.maybeWhen(
            data: (issueList) => IssueListState.data(
              issueList: issueList.copyWith(
                pageInfo: issueList.pageInfo.copyWith(
                  status: PageStatus.error(failure: failure),
                ),
              ),
            ),
            orElse: () => IssueListState.error(failure: failure),
          );
        },
        (issueList) {
          state = IssueListState.data(issueList: issueList);
        },
      );
    });
  }

  void moreLoaded() {
    scheduleMicrotask(() {
      // Not changing the state during the build
      state.maybeWhen(
        data: (issueList) {
          // Setting the status of pagination to loading.
          state = IssueListState.data(
            issueList: issueList.copyWith(
              pageInfo: issueList.pageInfo.copyWith(
                status: const PageStatus.loading(),
              ),
            ),
          );
          _issueListRepo.loadMore(issueList.pageInfo.endCursor);
        },
        orElse: () {
          // Do nothing if there is no data available.
        },
      );
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
