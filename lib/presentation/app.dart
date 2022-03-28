import 'package:flutter/material.dart';
import 'router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerDelegate: AppRouterDelegate(),
      routeInformationParser: const AppRouteInformationParser(),
    );
  }
}
