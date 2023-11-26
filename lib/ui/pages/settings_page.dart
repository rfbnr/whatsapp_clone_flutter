import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/theme/app_theme.dart';
import 'package:whatsapp_clone/ui/widgets/settings_list.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';
import 'package:whatsapp_clone/utils/data/data_settings_list.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var darkTheme = Themes.darkTheme;
    var lightTheme = Themes.lightTheme;

    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Settings",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColor.kWhiteColor,
            ),
          ),
          actions: [
            ThemeSwitcher(
              clipper: const ThemeSwitcherCircleClipper(),
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    var brightness = ThemeModelInheritedNotifier.of(context)
                        .theme
                        .brightness;

                    ThemeSwitcher.of(context).changeTheme(
                      theme: brightness == Brightness.light
                          ? darkTheme
                          : lightTheme,
                      isReversed: brightness == Brightness.light ? true : false,
                    );
                  },
                  icon: Icon(
                    ThemeModelInheritedNotifier.of(context).theme.brightness ==
                            Brightness.light
                        ? Icons.dark_mode
                        : Icons.light_mode,
                    size: 26,
                    color: AppColor.kWhiteColor,
                  ),
                );
              },
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 15,
                left: 15,
                bottom: 20,
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/users/default_user.jpg"),
                      ),
                    ),
                  ),
                  spaceWidth(18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Developer",
                        style: heading2.copyWith(
                          color: ThemeModelInheritedNotifier.of(context)
                                      .theme
                                      .brightness ==
                                  Brightness.light
                              ? AppColor.kBlackColor
                              : AppColor.kWhiteColor,
                        ),
                      ),
                      spaceHeight(2),
                      Text(
                        "Hey there! I am using WhatsApp.",
                        style: subHeading.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 0.1,
              color: AppColor.kGreyColor2,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: dataSettingList.length,
              itemBuilder: (context, index) {
                return SettingsList(data: dataSettingList[index]);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 50),
              child: Column(
                children: [
                  const Text(
                    "from",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColor.kGreyColor2,
                    ),
                  ),
                  Text(
                    "Meta",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: ThemeModelInheritedNotifier.of(context)
                                  .theme
                                  .brightness ==
                              Brightness.light
                          ? AppColor.kBlackColor
                          : AppColor.kWhiteColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
