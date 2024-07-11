import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';

class RowTile extends StatelessWidget {
  final String? text;
  final String? icon;
  final void Function()? ontap;

  const RowTile(
      {super.key, required this.icon, required this.text, this.ontap});

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
