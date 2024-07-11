import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/calls_screen/view/calls_screen.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/chat_screen/view/chat_screen.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/contacts_screen/view/contacts_screen.dart';
import 'package:wasab/presentation/home_screen/bottom_navigation_screens/profile_screen/view/profile_screen.dart';
import 'package:wasab/presentation/home_screen/main_app_layout/viewsmodel/cubit/layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial()) {
    emit(LayoutUpdate(selectedIndex: 0, pages: _pages));
  }

  static final List<Widget> _pages = [
    const ChatScreen(),
    const ContactScreen(),
    const CallsScreen(),
    const ProfileScreen()
  ];

  void updateSelectedIndex(int index) {
    emit(LayoutUpdate(selectedIndex: index, pages: _pages));
  }
}
