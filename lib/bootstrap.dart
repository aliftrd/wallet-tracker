import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  var logger = Logger();
  FlutterError.onError = (details) {
    logger.d(details.exception.toString(), stackTrace: details.stack);
  };

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    // Use the enhanced logger for uncaught errors too
    logger.e('Uncaught error: $error', stackTrace: stack);
    return true;
  };
  final appBuilder = await builder();
  runApp(appBuilder);
}
