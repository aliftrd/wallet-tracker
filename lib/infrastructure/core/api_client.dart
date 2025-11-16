import 'dart:async';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:logger/logger.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/infrastructure/datasource/auth/auth_local_datasource.dart';

class ApiClient {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  ApiClient() {
    _dio.options
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(minutes: 5)
      ..headers['Accept'] = 'application/json'
      ..headers['Content-Type'] = 'application/json'
      ..headers['Platform'] = 'Mobile'
      ..validateStatus = (status) => status != null && status < 500;

    _dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) async {
          if (response.statusCode == 401 && !response.requestOptions.path.contains('login')) {
            unAuthorized();
          }
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401 && !e.requestOptions.path.contains('login')) {
            unAuthorized();
          }
          return handler.next(e);
        },
      ),
    );

    _dio.interceptors.add(
      RetryInterceptor(
        dio: _dio,
        logPrint: _logger.e,
        retries: 3,
        retryDelays: const [
          Duration(seconds: 1),
          Duration(seconds: 2),
          Duration(seconds: 4),
        ],
        retryEvaluator: (error, attempt) {
          if (error.type == DioExceptionType.cancel) return false;

          // Jangan retry kalau request login
          if (error.requestOptions.path.contains('login')) return false;

          // Hanya retry method idempotent
          final method = error.requestOptions.method.toUpperCase();
          const idempotentMethods = ['GET', 'HEAD', 'OPTIONS'];
          if (!idempotentMethods.contains(method)) return false;

          // Jangan retry untuk 401
          if (error.response?.statusCode == 401) return false;

          final statusCode = error.response?.statusCode ?? 0;

          final isNetworkIssue =
              error.type == DioExceptionType.connectionError ||
              error.type == DioExceptionType.connectionTimeout ||
              error.type == DioExceptionType.receiveTimeout ||
              error.type == DioExceptionType.sendTimeout;

          final isRetryableStatusCode = statusCode == 408 || statusCode == 429 || (statusCode >= 500 && statusCode != 501 && statusCode != 505);

          return isNetworkIssue || isRetryableStatusCode;
        },
      ),
    );
  }

  void unAuthorized() async => locator<AuthLocalDatasource>().deleteToken();

  void setBearerToken(String? token) {
    if (token == null) return;
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  /// Get backend domain and main domain from
  /// shared preferences and set it to header
  Future<void> setupHostHeader() async {
    final accessToken = locator<AuthLocalDatasource>().getToken();
    if (accessToken != null) {
      setBearerToken(accessToken);
    }
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    await setupHostHeader();
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    await setupHostHeader();
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    await setupHostHeader();
    return _dio.put<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    await setupHostHeader();
    return _dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
