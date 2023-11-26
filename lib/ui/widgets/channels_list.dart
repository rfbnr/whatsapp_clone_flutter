import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/utils/models/model_channels.dart';

class ChannelsList extends StatefulWidget {
  final ModelChannels channel;
  const ChannelsList({super.key, required this.channel});

  @override
  State<ChannelsList> createState() => _ChannelsListState();
}

class _ChannelsListState extends State<ChannelsList> {
  bool isFollow = false;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 0.5,
          color: AppColor.kGreyColor,
        ),
        color: ThemeModelInheritedNotifier.of(context).theme.brightness ==
                Brightness.light
            ? AppColor.kWhiteColor
            : AppColor.kPrimaryDarkColor,
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 62,
                  height: 62,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(widget.channel.channelImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ThemeModelInheritedNotifier.of(context)
                                  .theme
                                  .brightness ==
                              Brightness.light
                          ? AppColor.kWhiteColor
                          : AppColor.kPrimaryDarkColor,
                    ),
                    child: const Icon(
                      Icons.verified,
                      size: 26,
                      color: AppColor.kSecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                widget.channel.channelName.length > 10
                    ? widget.channel.channelName
                        .substring(0, 11)
                        .replaceRange(11, null, "...")
                    : widget.channel.channelName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ThemeModelInheritedNotifier.of(context)
                              .theme
                              .brightness ==
                          Brightness.light
                      ? AppColor.kBlackColor
                      : AppColor.kWhiteColor,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isFollow = !isFollow;
                });
              },
              child: Container(
                width: 120,
                height: 36,
                alignment: Alignment.center,
                decoration: isFollow
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          width: 0.8,
                          color: AppColor.kGreyColor,
                        ),
                        color: ThemeModelInheritedNotifier.of(context)
                                    .theme
                                    .brightness ==
                                Brightness.light
                            ? AppColor.kWhiteColor
                            : AppColor.kPrimaryDarkColor,
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ThemeModelInheritedNotifier.of(context)
                                    .theme
                                    .brightness ==
                                Brightness.light
                            ? AppColor.kSecondaryColor2
                            : AppColor.kSecondaryDarkColor2,
                      ),
                child: Text(
                  isFollow ? "Following" : "Follow",
                  style: const TextStyle(
                    color: AppColor.kPrimaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
