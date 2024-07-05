import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../../../../injection.dart';
import '../../../../main.dart';
import 'logging_interceptor.dart';

class DioClient {
  late final String baseUrl;
  final LoggingInterceptor loggingInterceptor = getIt();
  final SharedPreferences sharedPreferences = getIt();
  late Dio dio;

  DioClient({required this.baseUrl}) {
    dio = Dio();
    dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = const Duration(minutes: 5)
      ..options.receiveTimeout = const Duration(minutes: 5)
      ..httpClientAdapter
      ..options.headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'lang': navigatorKey.currentContext!.locale.languageCode
      };
    dio.interceptors.add(loggingInterceptor);
  }

  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await dio.get(
        uri,
        queryParameters: queryParameters,
      );
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getUrl(String url) async {
    try {
      var response = await dio.get("");
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(
    String uri, {
    FormData? formData,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      /* if(model!=null&&model.auth.token!=null){
        dio.options.headers['Authorization'] =model.auth.token!;

      }*/

      var data = queryParameters ?? {};
      var response =
          await dio.post(uri, data: formData ?? FormData.fromMap(data));
      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }
}
