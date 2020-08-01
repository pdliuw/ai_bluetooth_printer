import 'dart:async';

import 'package:flutter/services.dart';

class AiBluetoothPrinter {
  static const MethodChannel _channel =
      const MethodChannel('ai_bluetooth_printer');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
