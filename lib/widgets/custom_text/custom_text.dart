import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/text_styles/text_styles.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  const CustomText(
      {super.key,
      this.title,
      this.fontColor = Colors.black,
      this.fontSize = fontR14,
      this.fontWeight = FontWeight.normal,
      this.maxLines,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return fontWeight == FontWeight.normal
        ? Text(
            title ?? '',
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: maxLines != null ? TextOverflow.ellipsis : null,
            style: AppTextStyles()
                .normalText(fontSize: fontSize)
                .textColorNormal(fontColor),
          )
        : Text(
            title ?? '',
            textAlign: textAlign,
            style: AppTextStyles()
                .normalText(fontSize: fontSize)
                .textColorBold(fontColor),
          );
  }
}
