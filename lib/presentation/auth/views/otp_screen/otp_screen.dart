import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/core/text_styles/text_styles.dart';
import 'package:wasab/presentation/auth/views/sign_up_screens/name_screen.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wasab/widgets/custom_button_nav_bar/custom_button_nav_bar.dart';
import '../../../../core/app_colors/app_colors.dart';
import '../../../../widgets/custom_text/custom_text.dart';

class OtpScreen extends StatefulWidget {
  final String phone;

  const OtpScreen({super.key, required this.phone});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // provider.initOtp(widget.phone);
      // provider.startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          showBackArrow: true,
          showToolBar: true,
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomText(
                title: 'Enter Code'.tr(),
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                fontColor: mainColor,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'We send a code via SMS to ( '.tr(),
                        style: AppTextStyles()
                            .normalText()
                            .textColorNormal(greyColor),
                        children: [
                          TextSpan(
                              text: widget.phone,
                              style: AppTextStyles()
                                  .normalText()
                                  .textColorNormal(mainColor)),
                          TextSpan(
                              text: ' ). Enter it here to verify your identity'
                                  .tr(),
                              style: AppTextStyles()
                                  .normalText()
                                  .textColorNormal(greyColor)),
                        ]))),
            const SizedBox(
              height: 32,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: PinCodeTextField(
                  enableActiveFill: true,
                  mainAxisAlignment: MainAxisAlignment.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  appContext: context,
                  length: 4,
                  cursorColor: mainColor,
                  // controller: provider.smsController,
                  pinTheme: PinTheme(
                      borderRadius: BorderRadius.circular(12),
                      fieldOuterPadding:
                          const EdgeInsets.symmetric(horizontal: 8),
                      fieldHeight: 56,
                      fieldWidth: 56,
                      activeColor: greyColor,
                      activeFillColor: inputBg,
                      selectedFillColor: inputBg,
                      selectedColor: greyColor,
                      inactiveColor: greyColor,
                      inactiveFillColor: inputBg,
                      shape: PinCodeFieldShape.box),
                )),
            const SizedBox(
              height: 32,
            ),
            // Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //     child: Center(child:
            //      Consumer<AuthProvider>(
            //       builder: (context, provider, _) {
            //         return CustomText(
            //           title: provider.isTimerStoped == null
            //               ? ''
            //               : provider.isTimerStoped!
            //                   ? 'Resend code'.tr()
            //                   : '${provider.seconds}',
            //           fontColor: mainColor,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 16,
            //         );
            //       },
            //     ))),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
        bottomNavigationBar: CustomButtonNavBar(
            title: 'Login'.tr(),
            ontap: () {
              NavigatorHandler.push(const NameScreen());
            }));
  }
}
