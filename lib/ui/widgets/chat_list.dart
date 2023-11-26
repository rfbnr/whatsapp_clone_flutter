import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

class ChatList extends StatelessWidget {
  final ModelChats data;
  const ChatList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/display-chat", arguments: data);
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: data.id == 1 ? 25 : 15,
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
            spaceWidth(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.userName.length > 18
                            ? data.userName
                                .substring(0, 18)
                                .replaceRange(18, null, "...")
                            : data.userName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.message[0]["timeMessage"],
                        style: TextStyle(
                          fontSize: 12,
                          color: data.message[0]["isNewMessage"]
                              ? ThemeModelInheritedNotifier.of(context)
                                          .theme
                                          .brightness ==
                                      Brightness.light
                                  ? AppColor.kSecondaryColor
                                  : AppColor.kSecondaryDarkColor
                              : AppColor.kGreyColor2,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: data.message[0]["isNewMessage"]
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.start,
                    children: [
                      if (data.message[0]["isSentMessage"] == true)
                        const Icon(
                          Icons.done_all,
                          size: 19,
                          color: AppColor.kGreyColor2,
                        )
                      else if (data.message[0]["isNewMessage"] != true)
                        const Icon(
                          Icons.done,
                          size: 19,
                          color: AppColor.kGreyColor2,
                        ),
                      if (data.message[0]["isNewMessage"] != true)
                        spaceWidth(3),
                      Text(
                        data.message[0]["isNewMessage"] != false
                            ? "${data.message[0]["newMessage"]} from ${data.userName}"
                            : "${data.message[0]["sentMessage"]} from ${data.userName}",
                        style: const TextStyle(
                          fontSize: 15,
                          color: AppColor.kGreyColor2,
                        ),
                      ),
                      if (data.message[0]["isNewMessage"] != false)
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ThemeModelInheritedNotifier.of(context)
                                        .theme
                                        .brightness ==
                                    Brightness.light
                                ? AppColor.kSecondaryColor
                                : AppColor.kSecondaryDarkColor,
                          ),
                          child: Center(
                            child: Text(
                              data.message[0]["newMessageCount"],
                              style: TextStyle(
                                fontSize: 12,
                                color: ThemeModelInheritedNotifier.of(context)
                                            .theme
                                            .brightness ==
                                        Brightness.light
                                    ? AppColor.kWhiteColor
                                    : AppColor.kBlackColor,
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
