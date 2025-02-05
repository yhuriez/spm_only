
import 'spm_only_platform_interface.dart';

class SpmOnly {
  Future<String?> getPlatformVersion() {
    return SpmOnlyPlatform.instance.getPlatformVersion();
  }
}
