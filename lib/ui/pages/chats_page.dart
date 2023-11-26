import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/widgets/footer_widget.dart';
import 'package:whatsapp_clone/utils/data/data_chats.dart';
import 'package:whatsapp_clone/ui/widgets/chat_list.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: dataChats.length,
          itemBuilder: (context, index) {
            return ChatList(data: dataChats[index]);
          },
        ),
        const FooterWidget(),
      ],
    );
  }
}
