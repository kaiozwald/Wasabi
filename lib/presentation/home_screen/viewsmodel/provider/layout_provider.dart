// import 'package:flutter/material.dart';
// import 'package:wasab/presentations/home_screen/bottom_navigation_screens/contacts_screen/contacts_screen.dart';
// import 'package:wasab/presentations/home_screen/bottom_navigation_screens/calls_screen/calls_screen.dart';
// import 'package:wasab/presentations/home_screen/bottom_navigation_screens/profile_screen/profile_screen.dart';

// import '../bottom_navigation_screens/chat_screen/chat_screen.dart';

// class LayoutProvider with ChangeNotifier {
//   int currentIndex = -1;
//   Widget? currentScreen;
//   List<Widget> bottomNavigationScreen = [
//     const ChatScreen(),
//     const CallsScreen(),
//     const ContactScreen(),
//     const ProfileScreen()
//   ];
//   List<Widget> stack = [];

//   void init() {
//     currentIndex = 2;
//     currentScreen = bottomNavigationScreen[currentIndex];
//   }

//   void updateSelectedBottomNavigationIndex(int index) {
//     currentIndex = index;
//     currentScreen = bottomNavigationScreen[currentIndex];

//     notifyListeners();
//   }

//   void onBack() {
//     if (stack.isNotEmpty) {
//       stack.removeLast();
//       currentScreen = stack.last;
//       notifyListeners();
//     } else {
//       if (currentIndex != -1) {
//         currentScreen = bottomNavigationScreen.elementAt(currentIndex);
//         notifyListeners();
//       }
//     }
//   }
// }
