import 'package:flutter_test/flutter_test.dart';
import 'package:spm_only/spm_only.dart';
import 'package:spm_only/spm_only_platform_interface.dart';
import 'package:spm_only/spm_only_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSpmOnlyPlatform
    with MockPlatformInterfaceMixin
    implements SpmOnlyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SpmOnlyPlatform initialPlatform = SpmOnlyPlatform.instance;

  test('$MethodChannelSpmOnly is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSpmOnly>());
  });

  test('getPlatformVersion', () async {
    SpmOnly spmOnlyPlugin = SpmOnly();
    MockSpmOnlyPlatform fakePlatform = MockSpmOnlyPlatform();
    SpmOnlyPlatform.instance = fakePlatform;

    expect(await spmOnlyPlugin.getPlatformVersion(), '42');
  });
}
