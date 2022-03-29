import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/auth_notifier.dart';
import 'app_route.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoute> {
  final WidgetRef ref;

  const AppRouteInformationParser(this.ref);

  @override
  Future<AppRoute> parseRouteInformation(RouteInformation routeInformation) {
    final authState = ref.read(authStateProvider);
    final uri = Uri.parse(routeInformation.location ?? '/');
    try {
      return SynchronousFuture(authState.when(
        authenticated: (_) {
          if (uri.pathSegments.isEmpty) {
            return const AppRoute.home();
          } else if (uri.pathSegments.length == 2 &&
              uri.pathSegments[0] == 'issue') {
            final issueNumber = int.parse(uri.pathSegments[1]);
            return IssueDetailRoute(number: issueNumber);
          } else {
            throw 'matched none';
          }
        },
        unauthenticated: () {
          if (uri.pathSegments.isEmpty) {
            return const AppRoute.home();
          } else {
            throw 'matched none';
          }
        },
      ));
    } catch (_) {
      // Something is wrong with the URI, so it's the not-found page
      return SynchronousFuture(const AppRoute.notFound());
    }
  }

  @override
  RouteInformation restoreRouteInformation(AppRoute configuration) {
    return RouteInformation(location: configuration.path);
  }
}
