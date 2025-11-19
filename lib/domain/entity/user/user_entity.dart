import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    required int id,
    required String name,
    required String email,
    required String avatar,
  }) = _UserEntity;
}
