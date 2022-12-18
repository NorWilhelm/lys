import 'icon_style.dart';
import 'settings_screen_utils.dart';
import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final IconData icons;
  final IconStyle? iconStyle;
  final String title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final bool? switchbutton;
  final TextStyle? subtitleStyle;
  final Widget? trailing;
  final VoidCallback onTap;

  const SettingsItem(
      {super.key,
      required this.icons,
      this.iconStyle,
      required this.title,
      this.titleStyle,
      this.subtitle = "",
      this.switchbutton,
      this.subtitleStyle,
      this.trailing,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onTap: onTap,
      splashColor: Colors.red,
      child: ListTile(
        leading: (iconStyle != null && iconStyle!.withBackground!)
            ? Container(
                decoration: BoxDecoration(
                  color: iconStyle!.backgroundColor,
                  borderRadius: BorderRadius.circular(iconStyle!.borderRadius!),
                ),
                padding: const EdgeInsets.all(5),
                child: Icon(
                  icons,
                  size: SettingsScreenUtils.settingsGroupIconSize,
                  color: iconStyle!.iconsColor,
                ),
              )
            : Icon(
                icons,
                size: SettingsScreenUtils.settingsGroupIconSize,
              ),
        title: Text(
          title,
          style: titleStyle ?? const TextStyle(fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        subtitle: (subtitle != "")
            ? Text(
                subtitle!,
                style: subtitleStyle ?? const TextStyle(color: Colors.grey),
                maxLines: 1,
              )
            : null,
        trailing: (trailing != null)
            ? trailing
            : const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
