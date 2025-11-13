import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Directory {
  static Future<String> findLocalDirectory() async {
    final directory = Platform.isAndroid ? await getApplicationDocumentsDirectory() : await getApplicationSupportDirectory();
    return directory.path;
  }
}
