import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/entity/user/user_entity.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(String email, String password);
  Future<Either<Failure, UserEntity>> register(String name, String email, String password);
  Future<Either<Failure, void>> logout();
}
