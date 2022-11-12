import 'package:flutter/material.dart';
import 'package:lys/config/responsive.dart';
import 'package:lys/config/size_config.dart';
import 'package:lys/core/presentation/style/colors.dart';
import 'package:lys/core/presentation/style/style.dart';
import 'components/components.dart';

class Automation extends StatelessWidget {
  const Automation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                        const AutomationHeader(),
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
                              children: const [Text('Something is coming...')]),
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
                                  color: AppColors.secondary,
                                ),
                                PrimaryText(
                                  text: '\$1500',
                                  size: Responsive.isDesktop(context) ? 30 : 22,
                                  fontWeight: FontWeight.w800,
                                ),
                              ],
                            ),
                            PrimaryText(
                              text: 'Heading',
                              size: Responsive.isDesktop(context) ? 16 : 14,
                              color: AppColors.secondary,
                            )
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 3,
                        ),
                        const SizedBox(
                            height: 180,
                            child: Text('Something is coming here too...')),
                        SizedBox(
                          height: Responsive.isDesktop(context)
                              ? SizeConfig.blockSizeVertical! * 5
                              : SizeConfig.blockSizeVertical! * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            PrimaryText(
                              text: 'Heading',
                              size: 30.0,
                              fontWeight: FontWeight.w800,
                            ),
                            PrimaryText(
                              text: 'Some description here',
                              size: 16,
                              color: AppColors.secondary,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 5,
                        ),
                        const Text('Yes, there will be data.'),
                      ]),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: Container(
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: const [AppBarActionItem()],
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
