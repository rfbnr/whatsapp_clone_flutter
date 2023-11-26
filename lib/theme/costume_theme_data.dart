import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';

ThemeData costumeThemeData() {
  return ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.kPrimaryColor,
      titleTextStyle: TextStyle(color: AppColor.kWhiteColor),
      iconTheme: IconThemeData(
        color: AppColor.kWhiteColor,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      surfaceTintColor: AppColor.kWhiteColor,
      backgroundColor: AppColor.kWhiteColor,
      indicatorColor: Colors.grey[200],
      shadowColor: AppColor.kBlackColor,
      labelTextStyle: const MaterialStatePropertyAll(
        TextStyle(
          color: AppColor.kGreyColor,
        ),
      ),
    ),
  );
}
