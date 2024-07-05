import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/auth/views/login_screen/login_screen.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_asset_image/custom_asset_image.dart';
import 'package:wasab/widgets/custom_button_nav_bar/custom_button_nav_bar.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';
import 'package:wasab/widgets/list_animation/list_animation.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            title: 'What\'s Up'.tr(),
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            fontColor: mainColor,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomAssetImage(
          assetName: 'welcome',
          width: 274,
          height: 274,
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomText(
            title:
                'Let\'s talk with your friends and family wherever and whenever'
                    .tr(),
            textAlign: TextAlign.center,
            fontColor: greyColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ]),
      bottomNavigationBar: CustomButtonNavBar(
          title: 'Continue With Phone'.tr(),
          ontap: () {
            NavigatorHandler.push(const LoginScreen());
          }),
    );
  }
}
