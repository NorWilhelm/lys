import 'package:flutter/material.dart';
import 'package:lys/core/presentation/config/responsive.dart';
import 'package:lys/core/presentation/style/style.dart';

class Header extends StatelessWidget {
  final String title;
  final String? subtitle;

  const Header({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: title,
              size: 30.0,
              fontWeight: FontWeight.w800,
            ),
            if (subtitle != null)
              PrimaryText(
                text: subtitle.toString(),
                size: 16,
              ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        if (Responsive.isDesktop(context))
          Expanded(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Theme.of(context).appBarTheme.backgroundColor,
                filled: true,
                contentPadding: const EdgeInsets.only(left: 40, right: 50),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(color: Theme.of(context).backgroundColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(color: Theme.of(context).secondaryHeaderColor),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 14.0,
                ),
              ),
            ),
          )
      ],
    );
  }
}
