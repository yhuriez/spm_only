import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'spm_only_platform_interface.dart';

/// An implementation of [SpmOnlyPlatform] that uses method channels.
class MethodChannelSpmOnly extends SpmOnlyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('spm_only');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
