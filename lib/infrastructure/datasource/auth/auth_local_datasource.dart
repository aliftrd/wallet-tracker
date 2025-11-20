import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/services/hive_service.dart';

/// [INTERFACE]
abstract class AuthLocalDatasource {
  String? getToken();
  Future<void> saveToken(String token);
  Future<void> deleteToken();
  Stream<String?> watchToken();
}

/// [IMPLEMENTATION]
class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  final HiveService hiveService;

  AuthLocalDatasourceImpl(this.hiveService);

  @override
  String? getToken() {
    final box = hiveService.ensureBox();
    return box.get(Constants.HIVE_AUTH) as String?;
  }

  @override
  Future<void> saveToken(String token) async {
    final box = hiveService.ensureBox();
    await box.put(Constants.HIVE_AUTH, token);
  }

  @override
  Future<void> deleteToken() async {
    final box = hiveService.ensureBox();
    await box.delete(Constants.HIVE_AUTH);
  }

  /// Stream that emits whenever the token changes
  @override
  Stream<String?> watchToken() {
    final box = hiveService.ensureBox();
    return box.watch(key: Constants.HIVE_AUTH).map((event) {
      return event.value as String?;
    });
  }
}
