import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_messengers_method_channel.dart';

abstract class MyMessengersPlatform extends PlatformInterface {
  /// Constructs a MyMessengersPlatform.
  MyMessengersPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyMessengersPlatform _instance = MethodChannelMyMessengers();

  /// The default instance of [MyMessengersPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyMessengers].
  static MyMessengersPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyMessengersPlatform] when
  /// they register themselves.
  static set instance(MyMessengersPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
