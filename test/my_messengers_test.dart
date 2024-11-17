import 'package:flutter_test/flutter_test.dart';
import 'package:my_messengers/my_messengers.dart';
import 'package:my_messengers/my_messengers_platform_interface.dart';
import 'package:my_messengers/my_messengers_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyMessengersPlatform
    with MockPlatformInterfaceMixin
    implements MyMessengersPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyMessengersPlatform initialPlatform = MyMessengersPlatform.instance;

  test('$MethodChannelMyMessengers is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyMessengers>());
  });

  test('getPlatformVersion', () async {
    MyMessengers myMessengersPlugin = MyMessengers();
    MockMyMessengersPlatform fakePlatform = MockMyMessengersPlatform();
    MyMessengersPlatform.instance = fakePlatform;

    expect(await myMessengersPlugin.getPlatformVersion(), '42');
  });
}
