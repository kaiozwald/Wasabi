import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wasab/core/app_theme/theme.dart';
import 'package:wasab/multiproviders.dart';
import 'package:wasab/presentation/auth/views/sign_up_screens/welcome_screen.dart';
import 'core/constants/constants.dart';
import 'injection.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await init();
  runApp(GenerateMultiBlocProviders(
      child: EasyLocalization(
    supportedLocales: supportedLanguages,
    startLocale: supportedLanguages[1],
    saveLocale: true,
    useOnlyLangCode: true,
    useFallbackTranslations: true,
    fallbackLocale: supportedLanguages[1],
    path: 'assets/languages',
    child: const MyApp(),
  )));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: context.locale.languageCode == 'en' ? 'wasab' : 'واساب',
      theme: AppTheme.theme(context),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: const WelcomeScreen(),
      // home: const SplashScreen(),
    );
  }
}
