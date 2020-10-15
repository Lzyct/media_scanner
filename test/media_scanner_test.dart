import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:media_scanner/media_scanner.dart';

void main() {
  const MethodChannel channel = MethodChannel('media_scanner');

  TestWidgetsFlutterBinding.ensureInitialized();

  /// check if not return null
  test('refreshGallery', () async {
    expect(MediaScanner.loadMedia, isNotNull);
  });
}
