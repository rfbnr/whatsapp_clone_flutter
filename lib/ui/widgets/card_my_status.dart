import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';

class CardMyStatus extends StatelessWidget {
  const CardMyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/users/default_user.jpg"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ThemeModelInheritedNotifier.of(context)
                                  .theme
                                  .brightness ==
                              Brightness.light
                          ? AppColor.kWhiteColor
                          : AppColor.kPrimaryDarkColor,
                    ),
                    child: const Icon(
                      Icons.add_circle_sharp,
                      color: AppColor.kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            spaceWidth(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My status",
                  style: heading2.copyWith(
                    color: ThemeModelInheritedNotifier.of(context)
                                .theme
                                .brightness ==
                            Brightness.light
                        ? AppColor.kBlackColor
                        : AppColor.kWhiteColor,
                  ),
                ),
                const Text(
                  "Tap to add status update",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.kGreyColor2,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
