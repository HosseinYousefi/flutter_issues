import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterissues/presentation/issue_detail/issue_detail_view.dart';
import 'package:flutterissues/presentation/issue_list/issue_list_view.dart';
import 'package:flutterissues/presentation/not_found/not_found_view.dart';

class AppRouteInformationParser extends RouteInformationParser<Uri> {
  const AppRouteInformationParser();

  @override
  Future<Uri> parseRouteInformation(RouteInformation routeInformation) {
    return SynchronousFuture(Uri.parse(routeInformation.location ?? '/'));
  }
}

/// A very light-weight navigator 2.0 delegate.
///
/// For more complex use cases, we can migrate to another solution like using
/// an external package.
class AppRouterDelegate extends RouterDelegate<Uri>
    with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  List<Page> _pages;

  AppRouterDelegate() : _pages = [];

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: _pages,
      onPopPage: (_, __) {
        return pop();
      },
    );
  }

  bool pop() {
    if (_pages.length > 1) {
      _pages.removeLast();
      notifyListeners();
      return true;
    }
    return false;
  }

  @override
  Future<bool> popRoute() {
    return Future.sync(pop);
  }

  @override
  Future<void> setNewRoutePath(Uri configuration) {
    try {
      if (configuration.pathSegments.isEmpty) {
        _pages = const [
          MaterialPage(
            key: ValueKey('/'),
            child: IssueListView(),
          ),
        ];
      } else if (configuration.pathSegments.length == 2 &&
          configuration.pathSegments[0] == 'issue') {
        final issueNumber = int.parse(configuration.pathSegments[1]);
        _pages = [
          const MaterialPage(
            key: ValueKey('/'),
            child: IssueListView(),
          ),
          MaterialPage(
            key: ValueKey(configuration.path),
            child: IssueDetailView(number: issueNumber),
          )
        ];
      } else {
        throw 'matched none';
      }
      notifyListeners();
    } catch (_) {
      // Something is wrong with the URI, show the not found page
      _pages = [
        MaterialPage(
          key: ValueKey(configuration.path),
          child: const NotFoundView(),
        ),
      ];
      notifyListeners();
    }
    return SynchronousFuture(() {}());
  }

  @override
  Uri get currentConfiguration => _pages.isNotEmpty
      ? Uri.parse((_pages.last.key as ValueKey).value)
      : Uri.parse('/');
}
