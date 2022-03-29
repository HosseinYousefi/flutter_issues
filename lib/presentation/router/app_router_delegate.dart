import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/auth_notifier.dart';
import '../../application/settings/settings_notifier.dart';
import 'app_route.dart';

final currentRouteProvider = StateProvider((_) => const AppRoute.home());

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
  AppRoute get currentConfiguration => ref.read(currentRouteProvider);

  AppRouterDelegate(this.ref) {
    // Listening to changes in route, settings (for theme changes)
    // and in the state of authentication and rebuilding.
    ref.listen(currentRouteProvider, (_, __) {
      notifyListeners();
    });
    ref.listen(authStateProvider, (_, __) {
      notifyListeners();
    });
    ref.listen(settingsStateProvider, (_, __) {
      notifyListeners();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ref.read(settingsStateProvider).brightness == Brightness.dark
          ? ThemeData.dark()
          : ThemeData.light(),
      child: Navigator(
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
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoute configuration) {
    ref.read(currentRouteProvider.notifier).state = configuration;
    return SynchronousFuture(() {}());
  }
}
