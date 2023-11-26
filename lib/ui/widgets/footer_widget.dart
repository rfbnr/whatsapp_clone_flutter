import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Divider(
            thickness: 0.2,
            color: AppColor.kGreyColor2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.lock_fill,
                size: 14,
                color: AppColor.kGreyColor2,
              ),
              spaceWidth(3),
              RichText(
                text: TextSpan(
                  text: "Your personal messages are ",
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColor.kGreyColor2,
                  ),
                  children: [
                    TextSpan(
                      text: "end-to-end encrypted",
                      style: TextStyle(
                        fontSize: 11,
                        color: ThemeModelInheritedNotifier.of(context)
                                    .theme
                                    .brightness ==
                                Brightness.light
                            ? AppColor.kSecondaryColor
                            : AppColor.kSecondaryDarkColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
