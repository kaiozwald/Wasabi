import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/view/new_messages.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        bgColor: white,
        title: 'Calls'.tr(),
        elevation: 1,
        actions: const [Icon(Icons.search)],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const ChatMessage(
            name: 'kai ozwald',
            chat: '! chating with me',
            image: 'chat',
            num: 'icon',
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
          assetName: 'call',
          color: white,
        ),
      ),
    );
  }
}
