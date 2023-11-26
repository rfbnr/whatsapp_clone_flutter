import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/ui/widgets/card_my_status.dart';
import 'package:whatsapp_clone/ui/widgets/channels_widget.dart';
import 'package:whatsapp_clone/ui/widgets/story_widget.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            bottom: 20,
            left: 15,
            right: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: heading.copyWith(
                  color: ThemeModelInheritedNotifier.of(context)
                              .theme
                              .brightness ==
                          Brightness.light
                      ? AppColor.kBlackColor
                      : AppColor.kWhiteColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: AppColor.kGreyColor2,
                ),
              )
            ],
          ),
        ),
        const CardMyStatus(),
        const StoryWidget(),
        const ChannelsWidget(),
      ],
    );
  }
}
