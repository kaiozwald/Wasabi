import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/app_theme/theme.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String iconName;
  final bool selected;
  final int index;

  const CustomBottomNavigationItem(
      {super.key,
      required this.iconName,
      required this.selected,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        // LayoutProvider layoutProvider = getIt();
        // layoutProvider.updateSelectedBottomNavigationIndex(index);
      },
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: CustomSvgIcon(
        assetName: iconName,
        color: selected
            ? mainColor
            : AppTheme.isDarkMode()
                ? greyColor
                : black,
      ),
    ));
  }
}
