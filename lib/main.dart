import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_theme.dart';
import 'package:whatsapp_clone/ui/pages/route_generator.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

void main() => runApp(const WhatsAppClone());

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: Themes.lightTheme,
      builder: (p0, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "WhatsApp Clone",
          theme: theme,
          initialRoute: "/",
          onGenerateRoute: RouterGenerator.generateRoute,
        );
      },
    );
  }
}
