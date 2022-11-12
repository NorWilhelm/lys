import 'package:auto_route/auto_route.dart';
import 'package:lys/core/presentation/navigation_page.dart';
import 'package:lys/dashboard.dart';
import 'package:lys/automation.dart';
import 'package:lys/test.dart';

// const noTransition = TransitionsBuilders.noTransition;
const fadeInTransition = TransitionsBuilders.fadeIn;

@MaterialAutoRouter(routes: [
  CustomRoute(
      path: '/',
      page: NavigationPage,
      transitionsBuilder: fadeInTransition,
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
          transitionsBuilder: fadeInTransition,
        ),
        CustomRoute(
          path: 'test',
          page: Test,
          transitionsBuilder: fadeInTransition,
        )
      ])
])
class $AppRouter {}
