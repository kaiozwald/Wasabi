import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/home_screen/views/bottom_navigation_screens/chat_screen/new_messages.dart';
import 'package:wasab/presentation/home_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        bgColor: white,
        title: 'Contacts'.tr(),
        elevation: 1,
        actions: const [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          RowTile(
              icon: 'invite',
              text: 'Invite Friends'.tr(),
              ontap: () {
                // NavigatorHandler.push(const NewChannelScreen()),
              }),
          RowTile(
              icon: 'location',
              text: 'Find People Nearby'.tr(),
              ontap: () {
                // NavigatorHandler.push(const NewChannelScreen()),
              }),
          const Divider(
            thickness: 10,
          ),
          SizedBox(
            height: 600,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return const ChatMessage(
                  name: 'kai ozwald',
                  chat: '! chating with me',
                  image: 'chat',
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: mainColor,
        onPressed: () {
          NavigatorHandler.push(const NewMessageScreen());
        },
        child: const CustomSvgIcon(
          assetName: 'invite',
          color: white,
        ),
      ),
    );
  }
}
