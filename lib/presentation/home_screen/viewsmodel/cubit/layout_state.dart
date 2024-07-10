import 'package:flutter/material.dart';

abstract class LayoutState {}

class LayoutInitial extends LayoutState {}

class LayoutUpdate extends LayoutState {
  final int selectedIndex;
  final List<Widget> pages;

  LayoutUpdate({required this.selectedIndex, required this.pages});
}
