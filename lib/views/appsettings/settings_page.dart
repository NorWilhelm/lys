import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:lys/core/presentation/config/responsive.dart';
import 'package:lys/core/presentation/config/size_config.dart';
import 'package:lys/core/presentation/header.dart';
import 'package:lys/core/presentation/app_bar_actions_item.dart';
import 'components/settings_utils.dart';
import 'package:lys/core/presentation/style/themes.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
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
                      const Header(
                        title: 'Settings',
                        subtitle: 'Themes & Customization',
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context)
                            ? SizeConfig.blockSizeVertical! * 5
                            : SizeConfig.blockSizeVertical! * 3,
                      ),
                      ThemeSwitcher(
                        clipper: const ThemeSwitcherCircleClipper(),
                        builder: (context) {
                          return OutlinedButton(
                            child: const Text('Fancy Contrast'),
                            onPressed: () {
                              ThemeSwitcher.of(context).changeTheme(
                                theme: ThemeModelInheritedNotifier.of(context)
                                            .theme
                                            .brightness ==
                                        Brightness.light
                                    ? Themes.lightFancy
                                    : Themes.lightYellowFancy,
                              );
                            },
                          );
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 450,
                            height: 600,
                            child: ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                SettingsGroup(
                                  items: [
                                    SettingsItem(
                                      onTap: () => {
                                        debugPrint('Clicked: Adaptive Themes')
                                      },
                                      icons: Icons.theater_comedy_rounded,
                                      title: 'Adaptive Themes',
                                    ), //TODO:
                                    /*trailing: Switch(
                                            value: Themes.adaptiveThemes,
                                            activeColor: Colors.amber,
                                            onChanged: (value) {
                                              setState(() {
                                                Themes.adaptiveThemes = value;
                                              });
                                            })),*/
                                    SettingsItem(
                                      onTap: () => {debugPrint('here')},
                                      icons: Icons.ac_unit_outlined,
                                      title: 'Themes',
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 400,
                            height: 600,
                            child: ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                SettingsGroup(
                                  items: [
                                    SettingsItem(
                                      onTap: () => {
                                        debugPrint('Clicked: Adaptive Themes')
                                      },
                                      icons: Icons.theater_comedy_rounded,
                                      title: 'Adaptive Themes',
                                    ),
                                    SettingsItem(
                                      onTap: () => {debugPrint('here')},
                                      icons: Icons.ac_unit_outlined,
                                      title: 'Themes',
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 5,
                      ),
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
