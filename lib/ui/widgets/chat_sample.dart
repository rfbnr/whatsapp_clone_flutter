import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

class ChatSample extends StatelessWidget {
  final ModelChats data;
  const ChatSample({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 2,
          right: 2,
          top: 10,
          bottom: 70,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(bottom: 10),
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color:
                    ThemeModelInheritedNotifier.of(context).theme.brightness ==
                            Brightness.light
                        ? AppColor.kOrangeColor
                        : AppColor.kSecondaryDarkColor2,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: ThemeModelInheritedNotifier.of(context)
                                .theme
                                .brightness ==
                            Brightness.light
                        ? Colors.grey.withOpacity(0.5)
                        : AppColor.kSecondaryDarkColor2.withOpacity(0.5),
                  )
                ],
              ),
              child: Text(
                "Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Tap to learn more.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: ThemeModelInheritedNotifier.of(context)
                              .theme
                              .brightness ==
                          Brightness.light
                      ? AppColor.kBlackColor
                      : AppColor.kOrangeColor,
                ),
              ),
            ),
            DateChip(
              date: DateTime.now().subtract(const Duration(days: 1)),
              color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.light
                  ? AppColor.kWhiteColor2
                  : AppColor.kSecondaryDarkColor2,
            ),
            BubbleSpecialOne(
              textStyle: TextStyle(
                fontSize: 16,
                color:
                    ThemeModelInheritedNotifier.of(context).theme.brightness ==
                            Brightness.light
                        ? AppColor.kBlackColor
                        : AppColor.kWhiteColor,
              ),
              text: "Hii Developer, how are you",
              delivered: true,
              color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.light
                  ? AppColor.kGreenColor2
                  : AppColor.kPrimaryColor,
            ),
            BubbleSpecialOne(
              textStyle: TextStyle(
                fontSize: 16,
                color:
                    ThemeModelInheritedNotifier.of(context).theme.brightness ==
                            Brightness.light
                        ? AppColor.kBlackColor
                        : AppColor.kWhiteColor,
              ),
              text: "Hii i'm finee",
              isSender: false,
              color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.light
                  ? AppColor.kWhiteColor
                  : AppColor.kSecondaryDarkColor2,
            ),
            DateChip(
              date: DateTime.now(),
              color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.light
                  ? AppColor.kWhiteColor2
                  : AppColor.kSecondaryDarkColor2,
            ),
            BubbleSpecialOne(
              textStyle: TextStyle(
                fontSize: 16,
                color:
                    ThemeModelInheritedNotifier.of(context).theme.brightness ==
                            Brightness.light
                        ? AppColor.kBlackColor
                        : AppColor.kWhiteColor,
              ),
              text: data.message[0]["isNewMessage"]
                  ? "${data.message[0]["newMessage"]} from ${data.userName}"
                  : "${data.message[0]["sentMessage"]} from ${data.userName}",
              delivered: data.message[0]["isSentMessage"] ? true : false,
              sent: data.message[0]["isNewMessage"] ? false : true,
              isSender: data.message[0]["isNewMessage"] ? false : true,
              color: data.message[0]["isNewMessage"]
                  ? ThemeModelInheritedNotifier.of(context).theme.brightness ==
                          Brightness.light
                      ? AppColor.kWhiteColor
                      : AppColor.kSecondaryDarkColor2
                  : ThemeModelInheritedNotifier.of(context).theme.brightness ==
                          Brightness.light
                      ? AppColor.kGreenColor2
                      : AppColor.kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
