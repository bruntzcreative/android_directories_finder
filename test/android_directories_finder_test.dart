import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_directories_finder/android_directories_finder.dart';

void main() {
  const MethodChannel channel = MethodChannel('android_directories_finder');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    // expect(await AndroidDirectoriesFinder.platformVersion, '42');
  });
}
