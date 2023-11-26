import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/shared/color.dart';

AppBar costumeAppBar(currentPage, context) {
  List<String> popupItem = [
    "New group",
    "New broadcast",
    "Linked devices",
    "Starred messages",
    "Settings"
  ];

  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle.light,
    title: const Text(
      "WhatsApp",
      style: TextStyle(
        fontSize: 22,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.camera,
        ),
      ),
      Visibility(
        visible: currentPage != 2,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.search,
          ),
        ),
      ),
      PopupMenuButton(
        icon: const Icon(
          Icons.more_vert,
          color: AppColor.kWhiteColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
        surfaceTintColor:
            ThemeModelInheritedNotifier.of(context).theme.brightness ==
                    Brightness.light
                ? AppColor.kWhiteColor
                : AppColor.kPrimaryDarkColor2,
        color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                Brightness.light
            ? AppColor.kWhiteColor
            : AppColor.kPrimaryDarkColor2,
        offset: const Offset(0, 50),
        itemBuilder: (context) {
          return popupItem.map((item) {
            return PopupMenuItem(
              value: item.toString(),
              onTap: item.toString() == "Settings"
                  ? () => Navigator.pushNamed(context, "/settings")
                  : () {},
              child: Text(
                item.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: ThemeModelInheritedNotifier.of(context)
                              .theme
                              .brightness ==
                          Brightness.light
                      ? AppColor.kBlackColor
                      : AppColor.kWhiteColor,
                ),
              ),
            );
          }).toList();
        },
      )
    ],
  );
}
