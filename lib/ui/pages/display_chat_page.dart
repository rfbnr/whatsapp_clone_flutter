import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/widgets/appbar_display_chat.dart';
import 'package:whatsapp_clone/ui/widgets/chat_sample.dart';
import 'package:whatsapp_clone/ui/widgets/input_chat_bottom.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

class DisplayChatPage extends StatelessWidget {
  final ModelChats data;
  const DisplayChatPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDisplayChat(context, data),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                    Brightness.light
                ? const AssetImage("assets/bg_chat2.png")
                : const AssetImage("assets/bg_dark_chat.jpg"),
          ),
        ),
        child: Stack(
          children: [
            ChatSample(data: data),
            const InputChatBottom(),
          ],
        ),
      ),
    );
  }
}
