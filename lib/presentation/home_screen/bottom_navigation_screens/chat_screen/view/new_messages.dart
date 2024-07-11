import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/view/new_channel.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/view/new_group.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_row_tile/row_tile.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({super.key});

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          showBackArrow: true,
          bgColor: white,
          title: 'New Messages'.tr(),
          elevation: 1,
          actions: const [Icon(Icons.search)],
        ),
        body: Column(
          children: [
            RowTile(
              icon: 'group',
              text: 'New Group'.tr(),
              ontap: () => NavigatorHandler.push(const NewGroupScreen()),
            ),
            const Divider(),
            RowTile(
              icon: 'channel',
              text: 'New Channel'.tr(),
              ontap: () => NavigatorHandler.push(const NewChannelScreen()),
            ),
            const Divider(
              thickness: 10,
            ),
            SizedBox(
              height: 655,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const ChatMessage(
                    name: 'kai ozwald',
                    chat: '! chating with me',
                    image: 'chat',
                    num: '2',
                    time: '09:56',
                  );
                },
              ),
            ),
          ],
        ));
  }
}
