import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/entities/repo_failure.dart';
import '../../domain/issue/issue_detail/entities/issue_detail.dart';
import '../../domain/issue/issue_detail/issue_detail_interfaces.dart';
import '../../infrastructure/issue_detail/issue_detail_repo.dart';
import 'issue_detail_state.dart';

final issueDetailStateProvider = StateNotifierProvider.autoDispose
    .family<IssueDetailNotifier, IssueDetailState, int>((ref, number) {
  final issueDetailRepo = ref.watch(issueDetailRepoProvider(number));
  return IssueDetailNotifier(issueDetailRepo);
});

class IssueDetailNotifier extends StateNotifier<IssueDetailState> {
  final IIssueDetailRepo _issueDetailRepo;

  StreamSubscription<Either<RepoFailure, IssueDetail>>? _subscription;

  IssueDetailNotifier(this._issueDetailRepo)
      : super(const IssueDetailState.loading()) {
    _subscription = _issueDetailRepo.watch().listen((event) {
      state = event.fold(
        (failure) => IssueDetailState.error(failure: failure),
        (issueDetail) => IssueDetailState.data(issueDetail: issueDetail),
      );
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
