import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'spm_only_method_channel.dart';

abstract class SpmOnlyPlatform extends PlatformInterface {
  /// Constructs a SpmOnlyPlatform.
  SpmOnlyPlatform() : super(token: _token);

  static final Object _token = Object();

  static SpmOnlyPlatform _instance = MethodChannelSpmOnly();

  /// The default instance of [SpmOnlyPlatform] to use.
  ///
  /// Defaults to [MethodChannelSpmOnly].
  static SpmOnlyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SpmOnlyPlatform] when
  /// they register themselves.
  static set instance(SpmOnlyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
