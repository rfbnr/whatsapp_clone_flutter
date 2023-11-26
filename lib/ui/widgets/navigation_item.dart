import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/shared/color.dart';

List<NavigationDestination> navigationItems = const [
  NavigationDestination(
    tooltip: "Chats",
    label: "Chats",
    selectedIcon: Icon(CupertinoIcons.chat_bubble_text_fill),
    icon: Icon(
      CupertinoIcons.chat_bubble_text,
      color: AppColor.kGreyColor,
    ),
  ),
  NavigationDestination(
    tooltip: "Updates",
    label: "Updates",
    selectedIcon: Icon(CupertinoIcons.smallcircle_circle_fill),
    icon: Icon(
      CupertinoIcons.smallcircle_circle,
      color: AppColor.kGreyColor,
    ),
  ),
  NavigationDestination(
    tooltip: "Communities",
    label: "Communities",
    selectedIcon: Icon(CupertinoIcons.group_solid),
    icon: Icon(
      CupertinoIcons.group,
      color: AppColor.kGreyColor,
    ),
  ),
  NavigationDestination(
    tooltip: "Calls",
    label: "Calls",
    selectedIcon: Icon(CupertinoIcons.phone_fill),
    icon: Icon(
      CupertinoIcons.phone,
      color: AppColor.kGreyColor,
    ),
  )
];
