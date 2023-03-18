import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:list_detail_demo/network/retrofit.dart';
import 'package:retrofit/retrofit.dart';

class BaseNetwork {
  late Retrofit retrofit;
  final String? contentType;
  final BuildContext _context;
  CancelToken? token;
  String? baseUrl;
  String? JWTToken;

  cancelCall() {
    if (token != null) token!.cancel("cancelled");
    token = CancelToken();
  }

  BaseNetwork(
    this._context, {
    this.contentType,
    this.JWTToken,
    this.baseUrl,
  }) {
    token = CancelToken();
    final logging = LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    );

    final baseOptions = BaseOptions(
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
      followRedirects: true,
      validateStatus: (status) {
        return status == null ? false : status <= 500;
      },
    );

    baseOptions.headers = {
      "content-type": contentType ?? "application/json",
    };

    Dio dio = Dio(baseOptions);
    dio.interceptors.clear();
    dio.interceptors.add(logging);
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) {
          if (JWTToken != null && JWTToken != '') {
            request.headers['Authorization'] = 'Bearer $JWTToken';
          }
          return handler.next(request);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (error, handler) async {
          handler.next(error);
        },
      ),
    );

    if (baseUrl != null) {
      retrofit = Retrofit(dio, baseUrl: baseUrl);
    } else {
      retrofit = Retrofit(dio);
    }
  }
}
