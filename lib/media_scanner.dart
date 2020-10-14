import 'dart:async';

import 'package:flutter/services.dart';

class MediaScanner {
  static const MethodChannel _channel = const MethodChannel('media_scanner');

  static Future<String> loadMedia({String path}) async {
    var data = {"path": path};

    return await _channel.invokeMethod('refreshGallery', data);
  }
}
