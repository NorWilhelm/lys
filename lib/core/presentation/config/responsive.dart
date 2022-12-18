import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final Widget? smallMobile;

  const Responsive(
      {Key? key,
      required this.mobile,
      this.tablet,
      required this.desktop,
      this.smallMobile})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 700;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // Desktop
    if (size.width >= 1000) {
      return desktop!;
    }
    // Tablet
    else if (size.width >= 700 && tablet != null) {
      return tablet!;
    }
    // Mobile
    else if (size.width >= 376 && size.width <= 700 && mobile != null) {
      return mobile!;
    } else {
      return smallMobile!;
    }
  }
}
