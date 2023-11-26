import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.kWhiteColor,
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
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.kPrimaryColor,
    ),
    iconTheme: const IconThemeData(
      color: AppColor.kWhiteColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.kPrimaryDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.kPrimaryDarkColor2,
      titleTextStyle: TextStyle(color: AppColor.kWhiteColor),
      actionsIconTheme: IconThemeData(
        color: AppColor.kWhiteColor,
      ),
      iconTheme: IconThemeData(
        color: AppColor.kPrimaryDarkColor,
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      surfaceTintColor: AppColor.kPrimaryDarkColor,
      backgroundColor: AppColor.kPrimaryDarkColor,
      indicatorColor: Color(0xff374248),
      shadowColor: AppColor.kBlackColor,
      labelTextStyle: MaterialStatePropertyAll(
        TextStyle(
          color: AppColor.kGreyColor,
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.kBlackColor,
    ),
    iconTheme: const IconThemeData(
      color: AppColor.kWhiteColor,
    ),
  );
}
