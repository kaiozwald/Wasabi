import 'package:flutter/material.dart';
import 'package:wasab/widgets/custom_button/custom_button.dart';

// ignore: must_be_immutable
class CustomButtonNavBar extends StatelessWidget {
  String title;
  void Function() ontap;
  CustomButtonNavBar({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: CustomButton(
          title: title,
          onTap: ontap,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ));
  }
}
