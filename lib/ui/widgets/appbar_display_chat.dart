import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';

AppBar appBarDisplayChat(context, data) {
  return AppBar(
    title: Text(
      data.userName.length > 10
          ? data.userName.substring(0, 11).replaceRange(11, null, "...")
          : data.userName,
      style: const TextStyle(
        color: AppColor.kWhiteColor,
        fontSize: 22,
      ),
    ),
    leadingWidth: 74,
    leading: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      borderRadius: BorderRadius.circular(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.arrow_left,
            color: AppColor.kWhiteColor,
          ),
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  data.userImg.isEmpty
                      ? "assets/users/default_user.jpg"
                      : data.userImg,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.video_camera_solid,
          color: AppColor.kWhiteColor,
          size: 30,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.phone_fill,
          color: AppColor.kWhiteColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert_rounded,
          color: AppColor.kWhiteColor,
        ),
      ),
    ],
  );
}
