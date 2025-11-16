import 'package:hive/hive.dart';
import 'package:waltrack/applications/config/directory.dart';
import 'package:waltrack/applications/constant/constants.dart';

class HiveService {
  static final HiveService _instance = HiveService._internal();
  factory HiveService() => _instance;

  HiveService._internal();

  Box? _box;
  static bool _hivePathInitialized = false;

  Future<void> init() async {
    if (_box != null && _box!.isOpen) return;
    if (!_hivePathInitialized) {
      final path = await Directory.findLocalDirectory();
      Hive.init(path);
      _hivePathInitialized = true;
    }
    if (Hive.isBoxOpen(Constants.HIVE_BOX)) {
      _box = Hive.box(Constants.HIVE_BOX);
    } else {
      _box = await Hive.openBox(Constants.HIVE_BOX);
    }
  }

  // ===== Helpers =====
  Box ensureBox() {
    final b = _box;
    if (b == null || !b.isOpen) {
      throw StateError('HiveService belum di-init. Panggil init() lebih dulu.');
    }
    return b;
  }
}
