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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../../views/appsettings/settings_page.dart' as _i5;
import '../../../views/automation/automation_page.dart' as _i3;
import '../../../views/dashboard/dashboard_page.dart' as _i2;
import '../../../views/testarea/test_page.dart' as _i4;
import '../page_controller.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    PageControllerRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.PageController(),
        transitionsBuilder: _i6.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.Dashboard(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AutomationRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.Automation(),
        transitionsBuilder: _i6.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TestRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.Test(),
        transitionsBuilder: _i6.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingsRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.Settings(),
        transitionsBuilder: _i6.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          PageControllerRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              '#redirect',
              path: '',
              parent: PageControllerRoute.name,
              redirectTo: 'dashboard',
              fullMatch: true,
            ),
            _i6.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: PageControllerRoute.name,
            ),
            _i6.RouteConfig(
              AutomationRoute.name,
              path: 'automation',
              parent: PageControllerRoute.name,
            ),
            _i6.RouteConfig(
              TestRoute.name,
              path: 'test',
              parent: PageControllerRoute.name,
            ),
            _i6.RouteConfig(
              SettingsRoute.name,
              path: 'settings',
              parent: PageControllerRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.PageController]
class PageControllerRoute extends _i6.PageRouteInfo<void> {
  const PageControllerRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PageControllerRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'PageControllerRoute';
}

/// generated route for
/// [_i2.Dashboard]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.Automation]
class AutomationRoute extends _i6.PageRouteInfo<void> {
  const AutomationRoute()
      : super(
          AutomationRoute.name,
          path: 'automation',
        );

  static const String name = 'AutomationRoute';
}

/// generated route for
/// [_i4.Test]
class TestRoute extends _i6.PageRouteInfo<void> {
  const TestRoute()
      : super(
          TestRoute.name,
          path: 'test',
        );

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i5.Settings]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}
