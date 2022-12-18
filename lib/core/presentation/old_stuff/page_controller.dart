import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:lys/core/presentation/config/responsive.dart';
import 'package:lys/core/presentation/config/size_config.dart';
import 'package:lys/core/presentation/old_stuff/navigation_rail.dart';
import 'package:lys/core/presentation/app_bar_actions_item.dart';
import 'package:lys/views/dashboard/dashboard_page.dart';
import 'package:lys/views/automation/automation_page.dart';
import 'package:lys/views/appsettings/settings_page.dart';
import 'package:lys/views/testarea/presentation/test_page.dart';

// Previous name: NavigationPage or navigation_page.dart
class PageControllerViewOld extends ConsumerWidget {
  const PageControllerViewOld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    SizeConfig().init(context);

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

    return ThemeSwitchingArea(child: Builder(
      builder: (context) {
        return Scaffold(
          key: drawerKey,
          drawer: SizedBox(
            //child: SideMenu(),
            width: 93,
            child: NavRail(),
          ),
          appBar: !Responsive.isDesktop(context)
              ? AppBar(
                  elevation: 0,
                  backgroundColor: Theme.of(context).backgroundColor,
                  leading: IconButton(
                      onPressed: () {
                        drawerKey.currentState!.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Theme.of(context).primaryColor,
                      )),
                  actions: const [AppBarActionItem()],
                )
              : const PreferredSize(
                  preferredSize: Size.zero,
                  child: SizedBox(),
                ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  child: NavRail(),
                ),
              Expanded(flex: 11, child: getPageView()),
            ],
          ),
        );
      },
    ));
  }
}
