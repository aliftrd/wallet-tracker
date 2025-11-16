import 'package:waltrack/infrastructure/core/api_client.dart';
import 'package:waltrack/infrastructure/core/datasource/api_datasource.dart';
import 'package:waltrack/infrastructure/model/auth/auth_model.dart';

extension APIExtension on ApiClient {
  /// AUTH ENTITY
  ApiDataSource<AuthModel> get nativeEmailSignIn => ApiDataSource<AuthModel>(this, AuthModel.fromJson);
  // ApiDataSource<void> get register => ApiD ataSource<void>(this, (json) => json);
  ApiDataSource<UserModel> get me => ApiDataSource<UserModel>(this, UserModel.fromJson);
  ApiDataSource<void> get logout => ApiDataSource<void>(this, (json) => json);
}
