import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';

class InputChatBottom extends StatelessWidget {
  const InputChatBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 60,
            margin: const EdgeInsets.only(left: 4, right: 4, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.light
                  ? AppColor.kWhiteColor
                  : AppColor.kSecondaryDarkColor2,
            ),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              textAlignVertical: TextAlignVertical.center,
              maxLines: 5,
              minLines: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(5),
                hintText: "Message",
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: AppColor.kGreyColor,
                  ),
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file,
                        color: AppColor.kGreyColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        color: AppColor.kGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CircleAvatar(
              backgroundColor: AppColor.kPrimaryColor,
              radius: 24,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic,
                  color: AppColor.kWhiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
