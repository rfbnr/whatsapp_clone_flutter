import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/utils/models/model_settings_list.dart';

class SettingsList extends StatelessWidget {
  final ModelSettingsList data;
  const SettingsList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        onTap: () {},
        leading: data.icon,
        title: Text(
          data.title,
          style: TextStyle(
            fontSize: 16,
            color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                    Brightness.light
                ? AppColor.kBlackColor
                : AppColor.kWhiteColor,
          ),
        ),
        subtitle: data.description == null
            ? null
            : Text(
                data.description!,
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColor.kGreyColor2,
                ),
              ),
      ),
    );
  }
}
