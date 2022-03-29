import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/core/gql_client.dart';
import 'loading_screen/loading_screen.dart';
import 'router.dart';

/// This provider waits for all of the necessary parts of
/// the application to load before turning false.
final _isLoading = Provider((ref) {
  final hiveStore = ref.watch(storeProvider);
  return hiveStore is! AsyncData;
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
      routerDelegate: AppRouterDelegate(),
      routeInformationParser: const AppRouteInformationParser(),
    );
  }
}
