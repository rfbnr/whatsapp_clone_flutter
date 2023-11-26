import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

class UpdatesList extends StatelessWidget {
  final ModelChats chats;
  final bool isStatus;
  const UpdatesList({super.key, required this.chats, required this.isStatus});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: chats.status[0]["isStatusActive"] == isStatus,
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, bottom: 22),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/story-view", arguments: chats);
          },
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: chats.status[0]["isStatusActive"] == true
                        ? AppColor.kSecondaryColor
                        : AppColor.kGreyColor2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    chats.userImg.isEmpty
                        ? "assets/users/default_user.jpg"
                        : chats.userImg,
                    height: 48,
                    width: 48,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              spaceWidth(17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chats.userName.length > 22
                        ? chats.userName
                            .substring(0, 22)
                            .replaceRange(22, null, "...")
                        : chats.userName,
                    style: heading2.copyWith(
                      color: ThemeModelInheritedNotifier.of(context)
                                  .theme
                                  .brightness ==
                              Brightness.light
                          ? AppColor.kBlackColor
                          : AppColor.kWhiteColor,
                    ),
                  ),
                  Text(
                    chats.status[0]["createdAt"],
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColor.kGreyColor2,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
