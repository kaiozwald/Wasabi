import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/home_screen/views/bottom_navigation_screens/chat_screen/new_messages.dart';
import 'package:wasab/presentation/home_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        bgColor: white,
        title: 'Messages'.tr(),
        elevation: 1,
        actions: const [Icon(Icons.search)],
      ),
      body: ListView.builder(
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
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: mainColor,
        onPressed: () {
          NavigatorHandler.push(const NewMessageScreen());
        },
        child: const CustomSvgIcon(
          assetName: 'pen',
          color: white,
        ),
      ),
    );
  }
}
