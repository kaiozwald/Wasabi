import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/widgets/chat_message.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_asset_image/custom_asset_image.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';
import 'package:wasab/widgets/custom_text_form/custom_text_form.dart';

class NewGroupDetailsScreen extends StatefulWidget {
  const NewGroupDetailsScreen({super.key});

  @override
  State<NewGroupDetailsScreen> createState() => _NewGroupDetailsScreenState();
}

class _NewGroupDetailsScreenState extends State<NewGroupDetailsScreen> {
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
          const SizedBox(
            height: 30,
          ),
          const CustomAssetImage(
            assetName: 'camera',
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButton(
                  onPressed: () {},
                  child: const CustomText(
                    title: 'Upload',
                    fontColor: black,
                  ))),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextFormField(
              //TODO add controller here
              controller: TextEditingController(),
              textInputType: TextInputType.text,
              hint: 'Group Name'.tr(),
              prefix: const CustomSvgIcon(assetName: 'group'),
            ),
          ),
          const Divider(
            thickness: 10,
          ),
          const CustomText(
            title: '4 Members',
          ),
          SizedBox(
            height: 445,
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
    );
  }
}
