import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../application/auth/auth_state.dart';
import '../auth_form/auth_form_view.dart';
import '../issue_detail/issue_detail_view.dart';
import '../issue_list/issue_list_view.dart';
import '../not_found/not_found_view.dart';

part 'app_route.freezed.dart';

@freezed
class AppRoute with _$AppRoute {
  const AppRoute._();

  /// '/'
  const factory AppRoute.home() = HomeRoute;

  /// '/issue/:number'
  const factory AppRoute.issueDetail({
    required int number,
  }) = IssueDetailRoute;

  /// When no other route matches.
  const factory AppRoute.notFound() = NotFoundRoute;

  String get path => when(
        home: () => '/',
        issueDetail: (number) => '/issue/$number',
        notFound: () => '/404',
      );

  List<Page> pageStackFor({required AuthState authState}) {
    if (this is NotFoundRoute) {
      return const [MaterialPage(child: NotFoundView())];
    }
    return authState.when(
      authenticated: (_) {
        return [
          const MaterialPage(child: IssueListView()),
          if (this is IssueDetailRoute) ...[
            MaterialPage(
              child: IssueDetailView(
                number: (this as IssueDetailRoute).number,
              ),
            ),
          ],
        ];
      },
      unauthenticated: () {
        return const [MaterialPage(child: AuthFormView())];
      },
    );
  }
}
