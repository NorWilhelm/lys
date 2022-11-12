import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lys/core/presentation/style/colors.dart';
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
          icon: SvgPicture.asset(
            'assets/calendar.svg',
            width: 20.0,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/ring.svg',
            width: 20.0,
          ),
        ),
      ],
    );
  }
}
