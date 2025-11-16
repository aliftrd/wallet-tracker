import 'package:waltrack/applications/constant/constants.dart';
import 'package:waltrack/applications/services/hive_service.dart';

class AuthLocalDatasource {
  final HiveService hiveService;

  AuthLocalDatasource(this.hiveService);

  String? getToken() {
    final box = hiveService.ensureBox();
    return box.get(Constants.HIVE_AUTH) as String?;
  }

  Future<void> saveToken(String token) async {
    final box = hiveService.ensureBox();
    await box.put(Constants.HIVE_AUTH, token);
  }

  Future<void> deleteToken() async {
    final box = hiveService.ensureBox();
    await box.delete(Constants.HIVE_AUTH);
  }

  /// Stream that emits whenever the token changes
  Stream<String?> watchToken() {
    final box = hiveService.ensureBox();
    return box.watch(key: Constants.HIVE_AUTH).map((event) {
      return event.value as String?;
    });
  }
}
