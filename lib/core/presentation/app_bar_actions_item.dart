import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lys/core/presentation/routes/app_router.gr.dart';

class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {
              AutoRouter.of(context).navigate(const DashboardRoute());
            },
            icon: const Icon(Icons.calendar_month_outlined)),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined)),
      ],
    );
  }
}
