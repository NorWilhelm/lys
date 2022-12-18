import 'package:flutter/material.dart';
import 'package:lys/core/presentation/config/responsive.dart';
import 'package:lys/core/presentation/config/size_config.dart';
import 'package:lys/core/presentation/style/style.dart';
import 'package:lys/core/presentation/app_bar_actions_item.dart';
import 'package:lys/core/presentation/header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 10,
          child: SizedBox(
            height: SizeConfig.screenHeight,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(Responsive.isDesktop(context) ? 30 : 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(
                      title: 'Dashboard', subtitle: 'Lighting & Heating'),
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
                        Text('Temporary Text...'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? SizeConfig.blockSizeVertical! * 4
                        : SizeConfig.blockSizeVertical! * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: 'Heading',
                            size: Responsive.isDesktop(context) ? 16 : 14,
                          ),
                          PrimaryText(
                            text: 'PrimaryText',
                            size: Responsive.isDesktop(context) ? 30 : 22,
                            fontWeight: FontWeight.w800,
                          ),
                          PrimaryText(
                            text: Theme.of(context)
                                .colorScheme
                                .primary
                                .toString(),
                            size: Responsive.isDesktop(context) ? 30 : 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                      PrimaryText(
                        text: 'Something over here',
                        size: Responsive.isDesktop(context) ? 16 : 14,
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 3,
                  ),
                  const SizedBox(
                    height: 180,
                    child: Text('The content is just too much.'),
                  ),
                  SizedBox(
                    height: Responsive.isDesktop(context)
                        ? SizeConfig.blockSizeVertical! * 5
                        : SizeConfig.blockSizeVertical! * 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      PrimaryText(
                        text: 'History',
                        size: 30.0,
                        fontWeight: FontWeight.w800,
                      ),
                      PrimaryText(
                        text: 'Subheading going here',
                        size: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 5,
                  ),
                  const Text('Indeed.'),
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
                  children: const [AppBarActionItem()],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
