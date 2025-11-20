import 'package:dartz/dartz.dart';
import 'package:waltrack/applications/constant/endpoints.dart';
import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/datasource/api_datasource_ext.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/model/auth/auth_model.dart';

/// [INTERFACE]
abstract class AuthRemoteDatasource {
  Future<Either<Failure, AuthModel>> login(String email, String password);
  Future<Either<Failure, UserModel>> me();
  Future<Either<Failure, void>> logout();
}

/// [IMPLEMENTATION]
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final ApiClient _apiClient;

  AuthRemoteDatasourceImpl(this._apiClient);

  @override
  Future<Either<Failure, AuthModel>> login(String email, String password) async {
    return await _apiClient.nativeEmailSignIn.post(Endpoints.login, {
      'email': email,
      'password': password,
    });
  }

  @override
  Future<Either<Failure, UserModel>> me() async => _apiClient.me.get(Endpoints.profile);

  @override
  Future<Either<Failure, void>> logout() async => _apiClient.logout.delete(Endpoints.logout);
}
