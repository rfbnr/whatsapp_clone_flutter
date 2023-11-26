import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/shared/text_style.dart';
import 'package:whatsapp_clone/ui/widgets/updates_list.dart';
import 'package:whatsapp_clone/utils/data/data_chats.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  bool isViewed = false;

  @override
  Widget build(BuildContext context) {
    bool status;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 20,
            top: 30,
          ),
          child: Text(
            "Recent updates",
            style: subHeading,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: dataChats.length,
          itemBuilder: (context, index) {
            status = true;
            return UpdatesList(chats: dataChats[index], isStatus: status);
          },
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 20,
            bottom: isViewed ? 20 : 5,
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                isViewed = !isViewed;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Viewed updates", style: subHeading),
                Icon(
                  isViewed
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  size: 20,
                  color: AppColor.kGreyColor2,
                )
              ],
            ),
          ),
        ),
        Visibility(
          visible: isViewed,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: dataChats.length,
            itemBuilder: (context, index) {
              status = false;
              return UpdatesList(chats: dataChats[index], isStatus: status);
            },
          ),
        ),
        const Divider(
          thickness: 0.2,
          color: AppColor.kGreyColor2,
        ),
      ],
    );
  }
}
