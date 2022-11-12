// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../automation.dart' as _i3;
import '../../../dashboard.dart' as _i2;
import '../../../test.dart' as _i4;
import '../navigation_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    NavigationPageRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.NavigationPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.Dashboard(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AutomationRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.Automation(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TestRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.Test(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          NavigationPageRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              '#redirect',
              path: '',
              parent: NavigationPageRoute.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i5.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: NavigationPageRoute.name,
            ),
            _i5.RouteConfig(
              AutomationRoute.name,
              path: 'automation',
              parent: NavigationPageRoute.name,
            ),
            _i5.RouteConfig(
              TestRoute.name,
              path: 'test',
              parent: NavigationPageRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationPageRoute extends _i5.PageRouteInfo<void> {
  const NavigationPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NavigationPageRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'NavigationPageRoute';
}

/// generated route for
/// [_i2.Dashboard]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.Automation]
class AutomationRoute extends _i5.PageRouteInfo<void> {
  const AutomationRoute()
      : super(
          AutomationRoute.name,
          path: 'automation',
        );

  static const String name = 'AutomationRoute';
}

/// generated route for
/// [_i4.Test]
class TestRoute extends _i5.PageRouteInfo<void> {
  const TestRoute()
      : super(
          TestRoute.name,
          path: 'test',
        );

  static const String name = 'TestRoute';
}
