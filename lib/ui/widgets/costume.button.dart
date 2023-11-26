import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 100,
        left: 15,
        top: 15,
        bottom: 100,
      ),
      child: SizedBox(
        height: 45,
        width: 140,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColor.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Explore more",
            style: TextStyle(
              fontSize: 16,
              color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                      Brightness.light
                  ? AppColor.kWhiteColor
                  : AppColor.kPrimaryDarkColor,
            ),
          ),
        ),
      ),
    );
  }
}
