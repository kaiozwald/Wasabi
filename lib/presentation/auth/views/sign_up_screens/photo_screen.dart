import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/home_screen/main_app_layout/views/main_app_layout.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_asset_image/custom_asset_image.dart';
import 'package:wasab/widgets/custom_button_nav_bar/custom_button_nav_bar.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';
import 'package:wasab/widgets/list_animation/list_animation.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
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
              title: 'Add your photo'.tr(),
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              fontColor: mainColor,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomText(
              title: 'Get more people to know your better'.tr(),
              textAlign: TextAlign.center,
              fontColor: greyColor,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          const CustomAssetImage(
            assetName: 'camera',
            width: 140,
            height: 140,
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
        ]),
        bottomNavigationBar: CustomButtonNavBar(
            title: 'Next'.tr(),
            ontap: () {
              NavigatorHandler.push(const MainAppLayout());
            }));
  }
}
