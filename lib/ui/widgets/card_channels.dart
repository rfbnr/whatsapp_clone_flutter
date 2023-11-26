import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/ui/widgets/channels_list.dart';
import 'package:whatsapp_clone/utils/data/data_channels.dart';

class CardChannels extends StatelessWidget {
  const CardChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: dataChannels.length,
          itemBuilder: (context, index) {
            return ChannelsList(channel: dataChannels[index]);
          },
        ),
      ),
    );
  }
}
