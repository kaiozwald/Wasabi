// import 'package:flutter/material.dart';
// import 'package:wasab/theme_provider.dart';
// import 'injection.dart';

// class GenerateMultiBlocProviders extends StatelessWidget {
//   final Widget child;

//   const GenerateMultiBlocProviders({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (_) => SubjectBloc(),
//         ),
//         BlocProvider(
//           create: (_) => SubjectBloc(),
//         ),
//       ],
//       child: Container(),
//     );
//     //     ChangeNotifierProvider(create: (_) => getIt<ThemeProvider>()),
//   }
// }
