import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/auth_notifier.dart';
import 'app_route.dart';

/// A very light-weight navigator 2.0 delegate.
///
/// For more complex use cases, we can migrate to another solution like using
/// an external package.
class AppRouterDelegate extends RouterDelegate<AppRoute>
    with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  final WidgetRef ref;

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  late AppRoute currentConfiguration;

  AppRouterDelegate(this.ref) {
    ref.listen(authStateProvider, (_, __) {
      notifyListeners();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: currentConfiguration.pageStackFor(
        authState: ref.read(authStateProvider),
      ),
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        if (currentConfiguration is IssueDetailRoute) {
          setNewRoutePath(const HomeRoute());
        }
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoute configuration) {
    currentConfiguration = configuration;
    return SynchronousFuture(() {}());
  }
}
