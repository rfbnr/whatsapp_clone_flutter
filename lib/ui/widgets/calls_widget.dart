import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/ui/widgets/calls_list.dart';
import 'package:whatsapp_clone/utils/data/data_chats.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Recent",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.light
                  ? AppColor.kBlackColor
                  : AppColor.kWhiteColor,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: dataChats.length,
          itemBuilder: (context, index) {
            return CallsList(chats: dataChats[index]);
          },
        ),
      ],
    );
  }
}
