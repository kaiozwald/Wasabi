import 'package:flutter/material.dart';
import 'package:wasab/core/navigator/navigator.dart';
import 'package:wasab/presentation/auth/views/login_screen/login_screen.dart';
import 'package:wasab/presentation/splash_screen/widgets/button_start.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation, buttonAnimation;
  late AnimationController controller, buttonController;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    buttonController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));

    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    buttonAnimation =
        Tween<double>(begin: -100, end: 0).animate(buttonController);

    animation.addListener(() {
      if (animation.isCompleted) {
        buttonController.forward();
      }
      setState(() {});
    });

    buttonAnimation.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showToolBar: false,
      ),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Opacity(
                  opacity: animation.value,
                  child: const CustomSvgIcon(
                    assetName: 'logo',
                    width: 263,
                    height: 138,
                  ))),
          Positioned(
            bottom: buttonAnimation.value,
            left: 0,
            right: 0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: ButtonStart(
                onTap: () {
                  NavigatorHandler.pushReplacement(const LoginScreen());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
