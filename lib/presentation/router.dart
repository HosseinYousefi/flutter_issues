import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppRouteInformationParser extends RouteInformationParser<String> {
  const AppRouteInformationParser();

  @override
  Future<String> parseRouteInformation(RouteInformation routeInformation) {
    return SynchronousFuture(routeInformation.location ?? '/');
  }
}

class AppRouterDelegate extends RouterDelegate<String>
    with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  Future<bool> popRoute() {
    // TODO: implement popRoute
    throw UnimplementedError();
  }

  @override
  Future<void> setNewRoutePath(String configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }
}
