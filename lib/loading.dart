import 'dart:async';

import 'package:flutter/services.dart';

class Loading {
  static const MethodChannel _channel =
      const MethodChannel('loading');

  static Future<void> show([String text = ""]) async {
    try {
      await _channel.invokeMethod('show', {
        "text": text,
      });
    } catch(e) {
      //
    }

  }
  static Future<void> hide() async {
    try {
      await _channel.invokeMethod('hide');
    } catch(e) {
      //
    }
  }
}
