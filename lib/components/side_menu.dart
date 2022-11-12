import 'package:flutter/material.dart';
import 'package:lys/config/size_config.dart';
import 'package:lys/core/presentation/style/colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lys/core/presentation/routes/app_router.gr.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: Container(
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30,
                alignment: Alignment.topCenter,
              ),
              IconButton(
                tooltip: 'Dashboard',
                onPressed: () {
                  AutoRouter.of(context).navigate(const DashboardRoute());
                },
                icon: const Icon(Icons.home_outlined),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
              ),
              IconButton(
                tooltip: 'Automation',
                onPressed: () {
                  AutoRouter.of(context).navigate(const AutomationRoute());
                },
                icon: const Icon(Icons.schedule_outlined),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
              ),
              IconButton(
                onPressed: () {
                  AutoRouter.of(context).navigate(const TestRoute());
                },
                icon: const Icon(Icons.dataset_outlined),
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
