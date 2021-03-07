import 'dart:async';

import 'package:flutter/services.dart';

class MediaScanner {
  /// Define Method Channel
  static const MethodChannel _channel = const MethodChannel('media_scanner');

  /// Path : Path of Image/Video
  static Future<String?> loadMedia({String? path}) async =>
      await _channel.invokeMethod('refreshGallery', {"path": path});
}
