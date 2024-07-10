import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/app_theme/theme.dart';
import 'package:wasab/core/constants/constants.dart';
import 'package:wasab/core/dimens/dimens.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double? fontSize;
  final Color? fontColor;
  final bool? showBackArrow;
  final bool? centerTitle;
  final List<Widget>? actions;
  final bool showToolBar;
  final double? elevation;
  final Color? bgColor;
  final FontWeight? fontWeight;

  const CustomAppBar(
      {super.key,
      this.title,
      this.fontSize = fontR20,
      this.fontColor = black,
      this.showBackArrow = false,
      this.centerTitle = false,
      this.actions,
      this.showToolBar = true,
      this.elevation,
      this.bgColor,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor:
          bgColor ?? (AppTheme.isDarkMode() ? Colors.black : white),
      title: CustomText(
        title: title ?? '',
        fontSize: fontSize ?? fontR14,
        fontColor: fontColor != null
            ? (AppTheme.isDarkMode() ? Colors.white : black)
            : Colors.white,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      leadingWidth: 24,
      automaticallyImplyLeading: showBackArrow ?? false,
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      Size(Dimens.width, showToolBar == true ? appBarSize : 0);
}
