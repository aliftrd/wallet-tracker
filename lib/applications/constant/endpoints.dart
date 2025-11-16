import 'package:waltrack/applications/config/flavors.dart';

class Endpoints {
  static String get _baseUrl => Flavors.instance.baseUrl;

  /// [AUTHENTICATION]
  static String get login => '$_baseUrl/auth/login';
  static String get register => '$_baseUrl/auth/register';
  static String get logout => '$_baseUrl/auth/logout';

  /// [DASHBOARD]
  static String get dashboard => '$_baseUrl/dashboard';
  static String get wallets => '$_baseUrl/wallets';
  static String get transactions => '$_baseUrl/transactions';
  static String get categories => '$_baseUrl/categories';

  /// [PROFILE]
  static String get profile => '$_baseUrl/me';
  static String get fcmToken => '$_baseUrl/fcm-token';
}
