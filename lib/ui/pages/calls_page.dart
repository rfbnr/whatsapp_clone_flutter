import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/ui/widgets/calls_widget.dart';
import 'package:whatsapp_clone/ui/widgets/footer_widget.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin:
              const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 30),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.kPrimaryColor,
                  ),
                  child: Icon(
                    Icons.link,
                    size: 28,
                    color: ThemeModelInheritedNotifier.of(context)
                                .theme
                                .brightness ==
                            Brightness.light
                        ? AppColor.kWhiteColor
                        : AppColor.kPrimaryDarkColor,
                  ),
                ),
                spaceWidth(20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Create call link",
                            style: heading2.copyWith(
                              color: ThemeModelInheritedNotifier.of(context)
                                          .theme
                                          .brightness ==
                                      Brightness.light
                                  ? AppColor.kBlackColor
                                  : AppColor.kWhiteColor,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Share a link for your WhatsApp call",
                        style: TextStyle(
                          color: AppColor.kGreyColor2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const CallsWidget(),
        const FooterWidget(),
      ],
    );
  }
}
