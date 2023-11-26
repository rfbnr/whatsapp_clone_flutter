import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';

List<Widget> fabListIcon = [
  FloatingActionButton(
    onPressed: () {},
    heroTag: const Text("btn-chats"),
    backgroundColor: AppColor.kPrimaryColor,
    child: const Icon(
      CupertinoIcons.chat_bubble_text_fill,
      color: AppColor.kWhiteColor,
    ),
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      FloatingActionButton.small(
        onPressed: () {},
        heroTag: const Text("btn-updates"),
        backgroundColor: AppColor.kSecondaryColor2,
        child: const Icon(
          Icons.create_rounded,
          color: AppColor.kPrimaryColor,
        ),
      ),
      spaceHeight(15),
      FloatingActionButton(
        onPressed: () {},
        heroTag: const Text("btn-camera"),
        backgroundColor: AppColor.kPrimaryColor,
        child: const Icon(
          CupertinoIcons.camera_fill,
          color: AppColor.kWhiteColor,
        ),
      ),
    ],
  ),
  FloatingActionButton(
    onPressed: () {},
    heroTag: const Text("btn-chats"),
    backgroundColor: AppColor.kPrimaryColor,
    child: const Icon(
      CupertinoIcons.chat_bubble_text_fill,
      color: AppColor.kWhiteColor,
    ),
  ),
  FloatingActionButton(
    onPressed: () {},
    heroTag: const Text("btn-calls"),
    backgroundColor: AppColor.kPrimaryColor,
    child: const Icon(
      Icons.add_call,
      color: AppColor.kWhiteColor,
    ),
  ),
];
