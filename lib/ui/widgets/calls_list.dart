import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

class CallsList extends StatelessWidget {
  final ModelChats chats;
  const CallsList({super.key, required this.chats});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 15,
          right: 15,
          bottom: 10,
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.kPrimaryColor,
                image: DecorationImage(
                  image: AssetImage(chats.userImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            spaceWidth(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chats.userName.length > 22
                        ? chats.userName
                            .substring(0, 22)
                            .replaceRange(22, null, "...")
                        : chats.userName,
                    style: heading2.copyWith(
                      fontWeight: FontWeight.w500,
                      color: chats.calls[0]["inComing"]
                          ? ThemeModelInheritedNotifier.of(context)
                                      .theme
                                      .brightness ==
                                  Brightness.light
                              ? AppColor.kBlackColor
                              : AppColor.kWhiteColor
                          : Colors.red,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        chats.calls[0]["inComing"]
                            ? CupertinoIcons.phone_fill_arrow_up_right
                            : CupertinoIcons.phone_fill_arrow_down_left,
                        color: chats.calls[0]["inComing"]
                            ? AppColor.kPrimaryColor
                            : Colors.red,
                        size: 18,
                      ),
                      spaceWidth(8),
                      Text(
                        chats.calls[0]["createdAt"],
                        style: const TextStyle(
                          color: AppColor.kGreyColor2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                chats.calls[0]["isCall"]
                    ? Icons.phone
                    : CupertinoIcons.videocam_fill,
                color: AppColor.kPrimaryColor,
                size: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
