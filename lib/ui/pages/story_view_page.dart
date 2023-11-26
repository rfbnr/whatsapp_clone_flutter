import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/ui/widgets/space.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

class StoryViewPage extends StatefulWidget {
  final ModelChats? data;
  const StoryViewPage({super.key, required this.data});

  @override
  State<StoryViewPage> createState() => _StoryViewPageState();
}

class _StoryViewPageState extends State<StoryViewPage> {
  static final storyController = StoryController();

  List<StoryItem> storyItems = [];

  @override
  void initState() {
    super.initState();

    for (var story in widget.data!.story) {
      if (story["mediaType"] == "text") {
        storyItems.add(
          StoryItem.text(
            title: "${story["caption"]} my name is ${widget.data!.userName}",
            backgroundColor: story["color"],
            duration: const Duration(seconds: 5),
          ),
        );
      }

      if (story["mediaType"] == "image") {
        storyItems.add(
          StoryItem.pageProviderImage(
            AssetImage(story["media"]),
            caption: story["caption"],
            shown: true,
            duration: const Duration(seconds: 5),
          ),
        );
      }

      if (story["mediaType"] == "video") {
        storyItems.add(
          StoryItem.pageVideo(
            story["media"],
            caption: story["caption"],
            duration: Duration(milliseconds: (5.0 * 1000).toInt()),
            controller: storyController,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            StoryView(
              controller: storyController,
              storyItems: storyItems,
              inline: true,
              repeat: false,
              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) {
                  Navigator.pop(context);
                }
              },
              onStoryShow: (s) {},
              onComplete: () {
                Navigator.of(context).pop();
              },
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColor.kWhiteColor,
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(widget.data!.userImg),
                  ),
                  spaceWidth(16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.data!.userName,
                              style: const TextStyle(
                                color: AppColor.kWhiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "3 hours ago",
                              style: TextStyle(
                                color: AppColor.kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: AppColor.kWhiteColor,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
