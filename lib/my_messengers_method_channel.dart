import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_messengers_platform_interface.dart';

/// An implementation of [MyMessengersPlatform] that uses method channels.
class MethodChannelMyMessengers extends MyMessengersPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_messengers');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
