import 'dart:async';

import 'package:flutter/services.dart';

class AtMap {
  static const MethodChannel _channel =
      const MethodChannel('at_map');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
