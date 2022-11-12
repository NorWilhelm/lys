import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lys/core/presentation/routes/app_router.gr.dart';
import 'package:lys/config/responsive.dart';
import 'package:lys/config/size_config.dart';
import 'package:lys/core/presentation/style/colors.dart';
import 'package:lys/core/presentation/style/style.dart';
import 'package:lys/components/components.dart';

final counterProvider = StateNotifierProvider<TabIndex, int?>((ref) {
  return TabIndex();
});

class TabIndex extends StateNotifier<int?> {
  TabIndex() : super(null);

  set index(int? index) {
    state = index;
  }

  int? get index => state;
}

class NavigationPage extends ConsumerWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: AppColors.black,
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
            const Expanded(
              flex: 1,
              child: SideMenu(),
            ),
          const Expanded(flex: 14, child: AutoRouter())
        ],
      ),
    );
  }
}
