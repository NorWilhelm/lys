import 'package:flutter/material.dart';
import 'package:lys/core/presentation/config/responsive.dart';
import 'package:lys/core/presentation/config/size_config.dart';
import 'package:lys/core/presentation/style/style.dart';
import 'package:lys/core/presentation/header.dart';
import 'package:lys/core/presentation/app_bar_actions_item.dart';
import 'server_test_view.dart';
import 'server_content_test_view.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  // Test.

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // if (Responsive.isDesktop(context)) - Dette er flyttet til navigation_page.dart
            //   const Expanded(
            //     flex: 1,
            //     child: SideMenu(),
            //   ),
            Expanded(
              flex: 10,
              child: SizedBox(
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding:
                      EdgeInsets.all(Responsive.isDesktop(context) ? 30 : 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Header(
                        title: 'Testarea',
                        subtitle: 'Proving ground',
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context)
                            ? SizeConfig.blockSizeVertical! * 5
                            : SizeConfig.blockSizeVertical! * 3,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: const [
                            // Text('Testing Area.'),
                            // Text('Implementer HTTP forespørsler, (eller zigbee)'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: const [
                            PrimaryText(
                              text: 'Server Info',
                              size: 16,
                            ),
                            SizedBox(
                              height: 120,
                              child: ServerTestView(),
                            ),
                            PrimaryText(
                              text: 'Server Content',
                              size: 16,
                            ),
                            ServerContentTestView()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: Container(
                  height: SizeConfig.screenHeight,
                  color: Theme.of(context).backgroundColor,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: const [
                        AppBarActionItem(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
