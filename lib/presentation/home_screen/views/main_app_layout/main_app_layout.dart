import 'package:flutter/material.dart';
import 'package:wasab/presentation/home_screen/views/main_app_layout/widgets/bottom_navigation.dart';

class MainAppLayout extends StatefulWidget {
  const MainAppLayout({super.key});

  @override
  State<MainAppLayout> createState() => _MainAppLayoutState();
}

class _MainAppLayoutState extends State<MainAppLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
            // child: provider.currentScreen ??
            child: SizedBox()),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: const CustomBottomNavigation(),
        )
      ],
    );
  }
}
