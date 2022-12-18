import 'package:flutter/material.dart';
import 'package:lys/core/presentation/OnlineStatusBadge.dart';

class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const OnlineStatusBadge(),
        IconButton(
            onPressed: () {
              debugPrint('Pressed the button');
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
