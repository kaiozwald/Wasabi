import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';

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
        showToolBar: true,
        title: 'Messages'.tr(),
        elevation: 5,
        bgColor: inputBgDark,
      ),
      body: const Center(
        child: Text('chat', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
