import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, "/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height - 500,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/icon_wa.png",
                width: 70,
              ),
            ),
            spaceHeight(300),
            const Text(
              "from",
              style: TextStyle(
                color: AppColor.kGreyColor2,
              ),
            ),
            const Text(
              "Meta",
              style: TextStyle(
                color: AppColor.kSecondaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
