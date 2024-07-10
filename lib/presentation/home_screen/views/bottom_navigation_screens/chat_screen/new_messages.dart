import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/home_screen/views/bottom_navigation_screens/chat_screen/new_channel.dart';
import 'package:wasab/presentation/home_screen/views/bottom_navigation_screens/chat_screen/new_group.dart';
import 'package:wasab/presentation/home_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';

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

class RowTile extends StatelessWidget {
  final String? text;
  final String? icon;
  final void Function()? ontap;

  const RowTile(
      {super.key, required this.icon, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomSvgIcon(
                color: mainColor,
                assetName: icon!,
                width: 26,
                height: 26,
              ),
            ),
            CustomText(
              title: text,
            )
          ],
        ),
      ),
    );
  }
}
