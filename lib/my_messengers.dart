
import 'my_messengers_platform_interface.dart';

class MyMessengers {
  Future<String?> getPlatformVersion() {
    return MyMessengersPlatform.instance.getPlatformVersion();
  }
}
