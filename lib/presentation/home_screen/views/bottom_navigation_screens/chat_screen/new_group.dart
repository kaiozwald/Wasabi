import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/home_screen/views/bottom_navigation_screens/chat_screen/new_group_details.dart';
import 'package:wasab/presentation/home_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_button/custom_button.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({super.key});

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        bgColor: white,
        title: 'New Group'.tr(),
        elevation: 1,
        actions: const [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade300,
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: CustomText(
                  title: 'kai ozwald',
                ),
              ),
            ),
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
                  num: '!',
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(
            title: 'Next'.tr(),
            onTap: () => NavigatorHandler.push(const NewGroupDetailsScreen())),
      ),
    );
  }
}
