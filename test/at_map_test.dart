import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:at_map/at_map.dart';

void main() {
  const MethodChannel channel = MethodChannel('at_map');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AtMap.platformVersion, '42');
  });
}
