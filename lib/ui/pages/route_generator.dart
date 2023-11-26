import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/pages/display_chat_page.dart';
import 'package:whatsapp_clone/ui/pages/main_page.dart';
import 'package:whatsapp_clone/ui/pages/settings_page.dart';
import 'package:whatsapp_clone/ui/pages/splash_page.dart';
import 'package:whatsapp_clone/ui/pages/story_view_page.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const MainPage());

      case "/splash":
        return MaterialPageRoute(builder: (_) => const SplashPage());

      case "/settings":
        return MaterialPageRoute(builder: (_) => const SettingsPage());

      case "/display-chat":
        final ModelChats data = settings.arguments as ModelChats;
        return MaterialPageRoute(builder: (_) => DisplayChatPage(data: data));

      case "/story-view":
        final ModelChats data = settings.arguments as ModelChats;
        return MaterialPageRoute(builder: (_) => StoryViewPage(data: data));

      default:
        return MaterialPageRoute(builder: (_) => const MainPage());
    }
  }
}
