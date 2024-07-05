import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/auth/views/sign_up_screens/photo_screen.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_button_nav_bar/custom_button_nav_bar.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';
import 'package:wasab/widgets/list_animation/list_animation.dart';
import '../../../../widgets/custom_text_form/custom_text_form.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: ListAnimation(children: [
          const SizedBox(
            height: 84,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomText(
              title: 'Create Your Name'.tr(),
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              fontColor: mainColor,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomText(
              title: 'Get more people to know your name'.tr(),
              textAlign: TextAlign.center,
              fontColor: greyColor,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextFormField(
              //TODO add controller here
              controller: TextEditingController(),
              textInputType: TextInputType.text,
              hint: ''.tr(),
              prefix: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSvgIcon(assetName: 'person'),
                  CustomText(
                    title: '|',
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ]),
        bottomNavigationBar: CustomButtonNavBar(
            title: 'Next'.tr(),
            ontap: () {
              NavigatorHandler.push(const PhotoScreen());
            }));
  }
}
