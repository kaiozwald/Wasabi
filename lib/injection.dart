import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wasab/presentation/home_screen/main_app_layout/viewsmodel/cubit/layout_cubit.dart';

import 'data/datasource/remote/dio/logging_interceptor.dart';
import 'data/repositories/auth_repository.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(() => LayoutCubit());

  ///preference
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  ///network
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => LoggingInterceptor());

  ///repositories
  getIt.registerLazySingleton(() => AuthRepository());
}
