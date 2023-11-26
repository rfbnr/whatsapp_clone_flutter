import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/utils/models/model_settings_list.dart';

final List<ModelSettingsList> dataSettingList = [
  ModelSettingsList(
    id: 1,
    title: "Account",
    description: "Security notifications, change number",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.key,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 2,
    title: "privacy",
    description: "Block contacts, disappering messages",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.lock,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 3,
    title: "Avatar",
    description: "Create, edit, profile photo",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.emoji_emotions,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 4,
    title: "Chats",
    description: "Wallpapers, chat history",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.chat,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 5,
    title: "Notifications",
    description: "Message, group & call tones",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.notifications,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 6,
    title: "Storage and data",
    description: "Network usage, auto-download",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.data_saver_off,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 7,
    title: "App language",
    description: "English (device's language)",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.workspaces_filled,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 8,
    title: "Help",
    description: "Help center, contact us, privacy policy",
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.help_outline,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
  ModelSettingsList(
    id: 9,
    title: "Invite a friend",
    description: null,
    icon: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Icon(
        Icons.people,
        color: AppColor.kGreyColor2,
      ),
    ),
  ),
];
