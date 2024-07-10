import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/presentation/home_screen/viewsmodel/cubit/layout_cubit.dart';
import 'package:wasab/presentation/home_screen/viewsmodel/cubit/layout_state.dart';
import 'package:wasab/widgets/custom_svg/custom_svg_icon.dart';

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
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          if (state is LayoutUpdate) {
            return Scaffold(
              body: IndexedStack(
                index: state.selectedIndex,
                children: state.pages,
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: state.selectedIndex,
                onTap: (index) {
                  context.read<LayoutCubit>().updateSelectedIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: CustomSvgIcon(
                      assetName: 'message',
                      color: state.selectedIndex == 0 ? mainColor : greyColor,
                    ),
                    label: 'Messages',
                  ),
                  BottomNavigationBarItem(
                    icon: CustomSvgIcon(
                      assetName: 'group',
                      color: state.selectedIndex == 1 ? mainColor : greyColor,
                    ),
                    label: 'Contacts',
                  ),
                  BottomNavigationBarItem(
                    icon: CustomSvgIcon(
                      assetName: 'call',
                      color: state.selectedIndex == 2 ? mainColor : greyColor,
                    ),
                    label: 'Calls',
                  ),
                  BottomNavigationBarItem(
                    icon: CustomSvgIcon(
                      assetName: 'person',
                      color: state.selectedIndex == 3 ? mainColor : greyColor,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            );
          }
          return Container(); // or a loading spinner
        },
      ),
    );
  }
}
