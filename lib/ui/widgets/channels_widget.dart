import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/ui/widgets/card_channels.dart';
import 'package:whatsapp_clone/ui/widgets/costume.button.dart';

class ChannelsWidget extends StatelessWidget {
  const ChannelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Channels",
                style: heading.copyWith(
                  color: ThemeModelInheritedNotifier.of(context)
                              .theme
                              .brightness ==
                          Brightness.light
                      ? AppColor.kBlackColor
                      : AppColor.kWhiteColor,
                ),
              ),
              const Icon(
                Icons.add,
                color: AppColor.kBlackColor,
                size: 26,
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Stay updated on topics that matter to you. Find channels to follow below.",
            style: TextStyle(
              color: AppColor.kGreyColor2,
            ),
          ),
        ),
        const CardChannels(),
        const CostumeButton(),
      ],
    );
  }
}
