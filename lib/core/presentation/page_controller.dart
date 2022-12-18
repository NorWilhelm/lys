import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:lys/views/dashboard/dashboard_page.dart';
import 'package:lys/views/automation/automation_page.dart';
import 'package:lys/views/testarea/presentation/test_page.dart';
import 'package:lys/views/appsettings/settings_page.dart';

final pageIndexProvider = StateNotifierProvider<PageIndex, int?>((ref) {
  return PageIndex();
});

class PageIndex extends StateNotifier<int?> {
  PageIndex() : super(null);

  // TODO?: void initState() { state = 0; } -This will make sure that the Dashboard icon will be filled at startup.

  set index(int? index) {
    state = index;
  }

  void setIndex(int? index) {
    state = index;
  }

  int? get index => state;
}

class PageControllerView extends ConsumerWidget {
  const PageControllerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(pageIndexProvider);

    Widget getPageView() {
      switch (currentPageIndex) {
        case 0:
          return const Dashboard();
        case 1:
          return const Automation();
        case 2:
          return const Test();
        case 3:
          return const SettingsView();
        default:
          return const Dashboard();
      }
    }

    // Define the children to display within the body at different breakpoints.
    final List<Widget> children = <Widget>[
      for (int i = 0; i < 10; i++)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: const Color.fromARGB(255, 255, 201, 197),
            height: 400,
          ),
        )
    ];

    return ThemeSwitchingArea(child: Builder(builder: (context) {
      return BottomNavigationBarTheme(
          data: const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            backgroundColor: Colors.white,
          ),
          child: AdaptiveScaffold(
              smallBreakpoint: const WidthPlatformBreakpoint(end: 700),
              mediumBreakpoint:
                  const WidthPlatformBreakpoint(begin: 700, end: 1000),
              largeBreakpoint: const WidthPlatformBreakpoint(begin: 1000),
              useDrawer: false,
              internalAnimations: false,
              onSelectedIndexChange: (int index) {
                ref.read(pageIndexProvider.notifier).setIndex(index);
              },
              destinations: const <NavigationDestination>[
                NavigationDestination(
                    icon: Icon(Icons.home), label: 'Dashboard'),
                NavigationDestination(
                    icon: Icon(Icons.schedule), label: 'Automation'),
                NavigationDestination(
                    icon: Icon(Icons.dataset), label: 'Testing'),
                NavigationDestination(
                    icon: Icon(Icons.settings), label: 'Settings')
              ],
              body: (_) => getPageView(),
              //body: (_) => GridView.count(crossAxisCount: 2, children: children),
              smallBody: (_) => getPageView(),
              // Define a default secondaryBody.
              //secondaryBody: (_) =>
              //    Container(color: const Color.fromARGB(255, 234, 158, 192)),
              // Override the default secondaryBody during the smallBreakpoint to be
              // empty. Must use AdaptiveScaffold.emptyBuilder to ensure it is properly
              // overridden.
              smallSecondaryBody: AdaptiveScaffold.emptyBuilder));
    }));
  }
}
