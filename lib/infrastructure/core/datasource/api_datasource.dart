import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/models/base_response.dart';
import 'package:waltrack/infrastructure/core/models/base_response_list.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/core/result_handler.dart';

// Define the generic API data source class
class ApiDataSource<T> {
  final ApiClient apiClient;
  final T Function(Map<String, dynamic>) fromJson;

  ApiDataSource(this.apiClient, this.fromJson);

  Future<Either<Failure, T>> get(
    String endpoint, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await apiClient.get(
        endpoint,
        queryParameters: queryParams,
      );
      final responseCode = ResponseCode.fromCode(response.statusCode!);

      if (responseCode == ResponseCode.success) {
        final baseResponse = BaseResponse<T>.fromJson(
          response.data,
          responseCode,
          fromJson,
        );
        return Right(baseResponse.data);
      }

      return Left(
        Failure(
          message: response.data['message'],
          statusCode: responseCode,
          errors: response.data['errors'],
        ),
      );
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());

      return Left(_mapException(e));
    }
  }

  Future<Either<Failure, List<T>>> getList(
    String endpoint, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await apiClient.get(
        endpoint,
        queryParameters: queryParams,
      );
      final responseCode = ResponseCode.fromCode(response.statusCode!);

      if (responseCode == ResponseCode.success) {
        final baseResponse = BaseResponseList<T>.fromJson(
          response.data,
          responseCode,
          (data) => data.map((item) => fromJson(item)).toList(),
        );
        return Right(baseResponse.data);
      }

      return Left(
        Failure(
          message: response.data['message'],
          statusCode: responseCode,
          errors: response.data['errors'],
        ),
      );
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      if (e is DioException) {
        return Left(
          Failure(
            message: e.message ?? '',
            statusCode: ResponseCode.badRequest,
          ),
        );
      }

      return Left(
        Failure(
          message: e.toString(),
          statusCode: ResponseCode.badRequest,
        ),
      );
    }
  }

  Future<Either<Failure, T>> post(
    String endpoint,
    Map<String, dynamic> data, {
    bool formData = false,
  }) async {
    try {
      final response = await apiClient.post(
        endpoint,
        data: formData ? FormData.fromMap(data) : data,
      );
      final responseCode = ResponseCode.fromCode(response.statusCode!);

      if (responseCode == ResponseCode.created || responseCode == ResponseCode.success) {
        final baseResponse = BaseResponse<T>.fromJson(
          response.data,
          responseCode,
          fromJson,
        );
        return Right(baseResponse.data);
      }

      return Left(
        Failure(
          message: response.data['message'],
          statusCode: responseCode,
          errors: response.data['errors'],
        ),
      );
    } catch (e, stacktrace) {
      debugPrint('ERROR POST: ${e.toString()}');
      debugPrint('STACKTRACE POST: ${stacktrace.toString()}');

      return Left(_mapException(e));
    }
  }

  Future<Either<Failure, Results>> postNew(
    String endpoint,
    Map<String, dynamic> data, {
    bool formData = false,
  }) async {
    try {
      final response = await apiClient.post(
        endpoint,
        data: formData ? FormData.fromMap(data) : data,
      );
      final responseCode = ResponseCode.fromCode(response.statusCode!);

      if (responseCode == ResponseCode.created || responseCode == ResponseCode.success) {
        return Right(
          Results(
            responseCode: responseCode,
            message: response.data['message'],
            data: response.data['payload']?['data'],
          ),
        );
      }

      return Left(
        Failure(
          message: response.data['message'],
          statusCode: responseCode,
          errors: response.data['errors'],
        ),
      );
    } catch (e, stacktrace) {
      debugPrint('ERROR POST: ${e.toString()}');
      debugPrint('STACKTRACE POST: ${stacktrace.toString()}');

      return Left(_mapException(e));
    }
  }

  Future<Either<Failure, T>> delete(String endpoint) async {
    try {
      final response = await apiClient.delete(endpoint);
      final responseCode = ResponseCode.fromCode(response.statusCode!);

      if (responseCode == ResponseCode.success) {
        final baseResponse = BaseResponse<T>.fromJson(
          response.data,
          responseCode,
          fromJson,
        );
        return Right(baseResponse.data);
      }

      return Left(
        Failure(
          message: response.data['message'],
          statusCode: responseCode,
          errors: response.data['errors'],
        ),
      );
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());

      return Left(_mapException(e));
    }
  }

  Future<Either<Failure, T>> put(
    String endpoint,
    Map<String, dynamic> data, {
    bool formData = false,
  }) async {
    try {
      final response = await apiClient.put(
        endpoint,
        data: formData ? FormData.fromMap(data) : data,
      );
      final responseCode = ResponseCode.fromCode(response.statusCode!);

      if (responseCode == ResponseCode.success) {
        final baseResponse = BaseResponse<T>.fromJson(
          response.data,
          responseCode,
          fromJson,
        );
        return Right(baseResponse.data);
      }

      return Left(
        Failure(
          message: response.data['message'],
          statusCode: responseCode,
          errors: response.data['errors'],
        ),
      );
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());

      return Left(_mapException(e));
    }
  }
}

Failure _mapException(Object e) {
  if (e is DioException) {
    final statusCode = e.response?.statusCode;
    final code = ResponseCode.fromCode(statusCode ?? 0);

    return Failure(
      message: 'Terjadi kesalahan. Silakan coba lagi.',
      statusCode: code,
    );
  }

  return Failure(
    message: 'Terjadi kesalahan. Silakan coba lagi.',
    statusCode: ResponseCode.defaultError,
  );
}
