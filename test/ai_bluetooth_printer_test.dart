import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_bluetooth_printer/ai_bluetooth_printer.dart';

void main() {
  const MethodChannel channel = MethodChannel('ai_bluetooth_printer');

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
    expect(await AiBluetoothPrinter.platformVersion, '42');
  });
}
