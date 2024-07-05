import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';

import '../../../../../core/app_colors/app_colors.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showToolBar: true,
        title: 'Orders, Booking, Subscriptions'.tr(),
        elevation: 5,
        bgColor: inputBgDark,
      ),
      body: const Center(
        child: Text('cart', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
