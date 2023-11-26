import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 30,
            bottom: 20,
          ),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(right: 15, top: 5, bottom: 5),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(14),
                        color: ThemeModelInheritedNotifier.of(context)
                                    .theme
                                    .brightness ==
                                Brightness.light
                            ? Colors.grey[350]
                            : Colors.grey,
                      ),
                      child: const Icon(
                        Icons.groups_2_rounded,
                        color: AppColor.kWhiteColor,
                        size: 35,
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 10,
                      child: Container(
                        width: 26,
                        height: 26,
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
                          size: 26,
                          color: AppColor.kPrimaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "New community",
                  style: heading2.copyWith(
                    color: ThemeModelInheritedNotifier.of(context)
                                .theme
                                .brightness ==
                            Brightness.light
                        ? AppColor.kBlackColor
                        : AppColor.kWhiteColor,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
