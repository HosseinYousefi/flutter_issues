import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/auth/auth_service.dart';
import '../infrastructure/core/gql_client.dart';
import '../infrastructure/settings/settings_service.dart';
import '../infrastructure/visited_issues/visited_issues_service.dart';
import 'loading_screen/loading_screen.dart';
import 'router/app_route_information_parser.dart';
import 'router/app_router_delegate.dart';

/// This provider waits for all of the necessary parts of
/// the application to load before turning false.
final _isLoading = Provider((ref) {
  final hiveStore = ref.watch(storeProvider);
  final token = ref.watch(tokenProvider);
  final settings = ref.watch(settingsProvider);
  final visitedIssues = ref.watch(visitedIssuesProvider);
  return hiveStore is! AsyncData ||
      token is! AsyncData ||
      settings is! AsyncData ||
      visitedIssues is! AsyncData;
});

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(_isLoading);
    if (isLoading) {
      return const LoadingScreen();
    }
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: AppRouterDelegate(ref),
      routeInformationParser: AppRouteInformationParser(ref),
    );
  }
}
