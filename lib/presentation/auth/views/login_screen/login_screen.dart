import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/auth/views/otp_screen/otp_screen.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_button_nav_bar/custom_button_nav_bar.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';
import 'package:wasab/widgets/list_animation/list_animation.dart';

import '../../../../widgets/custom_text_form/custom_text_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              title: 'Enter Your Phone Number'.tr(),
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              fontColor: mainColor,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomText(
              title:
                  'Please confirm your region and enter your phone number'.tr(),
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
              // add phone controller
              controller: TextEditingController(),
              textInputType: TextInputType.phone,
              prefix: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    title: '+20',
                    fontColor: mainColor,
                  ),
                  CustomText(title: '|')
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ]),
        bottomNavigationBar: CustomButtonNavBar(
            title: 'Continue'.tr(),
            ontap: () {
              NavigatorHandler.push(const OtpScreen(phone: 'phone'));
            }));
  }
}
