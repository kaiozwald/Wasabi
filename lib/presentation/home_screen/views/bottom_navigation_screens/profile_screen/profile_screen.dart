import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';

import '../../../../../core/app_colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showToolBar: true,
        title: 'Profile'.tr(),
        elevation: 5,
        bgColor: inputBgDark,
      ),
      body: const Center(
        child: Text('profile', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
