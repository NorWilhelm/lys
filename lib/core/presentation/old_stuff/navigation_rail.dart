import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:lys/core/presentation/config/size_config.dart';

final pageIndexProvider = StateNotifierProvider<PageIndex, int?>((ref) {
  return PageIndex();
});

class PageIndex extends StateNotifier<int?> {
  PageIndex() : super(null);

  // TODO: void initState() { state = 0; } -This will make sure that the Dashboard icon will be filled at startup.

  set index(int? index) {
    state = index;
  }

  void setIndex(int? index) {
    state = index;
  }

  int? get index => state;
}

// Previous name: NavigationPage or navigation_page.dart
class NavRail extends ConsumerWidget {
  NavRail({super.key});

  // int selectedIndex = 0;
  final NavigationRailLabelType labelType = NavigationRailLabelType.all;
  final double groupAligment = -1.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);

    final selectedPageIndex = ref.watch(pageIndexProvider);

    return ThemeSwitchingArea(child: Builder(
      builder: (context) {
        return Scaffold(
            body: SafeArea(
          child: Row(
            children: <Widget>[
              NavigationRail(
                selectedIndex: selectedPageIndex,
                groupAlignment: groupAligment,
                onDestinationSelected: (int index) {
                  // selectedIndex = index;
                  ref.read(pageIndexProvider.notifier).setIndex(index);
                },
                labelType: labelType,
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: Text('Dashboard'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.schedule_outlined),
                    selectedIcon: Icon(Icons.schedule),
                    label: Text('Automation'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.dataset_outlined),
                    selectedIcon: Icon(Icons.dataset),
                    label: Text('Test'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings_outlined),
                    selectedIcon: Icon(Icons.settings),
                    label: Text('Settings'),
                  ),
                ],
              ),
              const VerticalDivider(thickness: 1, width: 1),
              // This is the main content.
            ],
          ),
        ));
      },
    ));
  }
}
