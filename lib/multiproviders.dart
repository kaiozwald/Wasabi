import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wasab/presentation/home_screen/main_app_layout/viewsmodel/cubit/layout_cubit.dart';

class GenerateMultiBlocProviders extends StatelessWidget {
  final Widget child;

  const GenerateMultiBlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LayoutCubit>(
          create: (BuildContext context) => LayoutCubit(),
        ),
      ],
      child: child,
    );
  }
}
