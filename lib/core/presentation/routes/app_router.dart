import 'package:auto_route/auto_route.dart';
import 'package:lys/core/presentation/page_controller.dart';
import 'package:lys/views/dashboard/dashboard_page.dart';
import 'package:lys/views/automation/automation_page.dart';
import 'package:lys/views/testarea/test_page.dart';
import 'package:lys/views/appsettings/settings_page.dart';

// Not currently in use. Consider removing if not needed.

// const noTransition = TransitionsBuilders.noTransition;
//const fadeInTransition = TransitionsBuilders.fadeIn;
const defaultTransition = TransitionsBuilders.noTransition;

@MaterialAutoRouter(routes: [
  CustomRoute(
      path: '/',
      page: PageController,
      transitionsBuilder: defaultTransition,
      initial: true,
      children: [
        CustomRoute(
          path: 'dashboard',
          page: Dashboard,
          initial: true,
        ),
        CustomRoute(
          path: 'automation',
          page: Automation,
          transitionsBuilder: defaultTransition,
        ),
        CustomRoute(
          path: 'test',
          page: Test,
          transitionsBuilder: defaultTransition,
        ),
        CustomRoute(
            path: 'settings',
            page: Settings,
            transitionsBuilder: defaultTransition)
      ])
])
class $AppRouter {}
