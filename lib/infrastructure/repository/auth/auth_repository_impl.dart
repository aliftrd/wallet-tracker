import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/entity/user/user_entity.dart';
import 'package:waltrack/domain/repository/auth/auth_repository.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/datasource/auth/auth_local_datasource.dart';
import 'package:waltrack/infrastructure/datasource/auth/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDatasource _authLocalDatasource;
  final AuthRemoteDatasource _authRemoteDatasource;

  AuthRepositoryImpl(this._authLocalDatasource, this._authRemoteDatasource);

  @override
  Future<Either<Failure, UserEntity>> login(String email, String password) async {
    final response = await _authRemoteDatasource.login(email, password);
    return response.fold(
      (failure) => Left(failure),
      (data) {
        _authLocalDatasource.saveToken(data.token);
        return right(data.user.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, UserEntity>> register(String name, String email, String password) async {
    return right(
      UserEntity(id: 0, name: name, email: email, avatar: ''),
    );
  }

  @override
  Future<Either<Failure, void>> logout() async {
    // return await authLocalDatasource.logout();
    return right(null);
  }
}
