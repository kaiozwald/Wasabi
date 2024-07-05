import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/core/app_theme/theme.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Card(
        color: AppTheme.isDarkMode() ? inputBgDark : bottomNavigationColor,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // CustomBottomNavigationItem(
            //   iconName: 'chats',
            //   selected: provider.currentIndex == 0,
            //   index: 0,
            // ),
            // CustomBottomNavigationItem(
            //   iconName: 'statistics',
            //   selected: provider.currentIndex == 1,
            //   index: 1,
            // ),
            // CustomBottomNavigationItem(
            //   iconName: 'home',
            //   selected: provider.currentIndex == 2,
            //   index: 2,
            // ),
            // CustomBottomNavigationItem(
            //   iconName: 'cart',
            //   selected: provider.currentIndex == 3,
            //   index: 3,
            // ),
            // CustomBottomNavigationItem(
            //   iconName: 'profile',
            //   selected: provider.currentIndex == 4,
            //   index: 4,
            // ),
          ],
        ),
      ),
    );
  }
}
