import 'package:flutter/material.dart';
import 'package:wasab/widgets/custom_app_bar/custom_app_bar.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text(
          'home',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
