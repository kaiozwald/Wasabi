import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/constants/constants.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_row_tile/row_tile.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';

import '../../../../../core/app_colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'My Profile'.tr(),
          elevation: 1,
          bgColor: white,
        ),
        body: const Column(
          children: [
            ChatMessage(
              name: 'kai ozwald',
              image: 'chat',
              chat: 'online',
            ),
            Divider(
              thickness: 7,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  title: 'Settings',
                  fontSize: fontR17,
                  // textAlign: TextAlign.right,
                ),
              ),
            ),
            RowTile(
              icon: 'notification',
              text: 'Notifications',
            ),
            Divider(),
            RowTile(
              icon: 'lock',
              text: 'Privacy & Security',
            ),
            Divider(),
            RowTile(
              icon: 'message',
              text: 'Chats',
            ),
            Divider(),
            RowTile(
              icon: 'storage',
              text: 'Storage & Data',
            ),
            Divider(
              thickness: 7,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  title: 'Help',
                  textAlign: TextAlign.left,
                  fontSize: fontR17,
                ),
              ),
            ),
            RowTile(
              icon: 'help',
              text: 'What\'s Up FAQ',
            ),
            Divider(),
            RowTile(
              icon: 'privacy',
              text: 'Privacy policy',
            ),
            Divider(),
            RowTile(
              icon: 'ask',
              text: 'Ask a question',
            ),
          ],
        ));
  }
}
