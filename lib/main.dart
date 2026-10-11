import 'package:app_flutter/src/app/hosted_app.dart';
import 'package:app_flutter/src/app/standalone_app.dart';
import 'package:app_flutter/src/bridge/mount_buffer.dart';
import 'package:app_flutter/src/bridge/router_channel.dart';
import 'package:flutter/widgets.dart';

/// 宿主通过 entrypointArgs 传入 `hosted`。
/// `flutter run` 不带该参数，走调试壳，首页用 Flutter 占位页代替 Swift 页面。
void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  final hosted = args.contains('hosted');
  if (!hosted) {
    runApp(const StandaloneApp());
    return;
  }

  final channel = RouterChannel();
  final mounts = MountBuffer();
  channel.install(mounts.add);
  runApp(HostedApp(channel: channel, mounts: mounts));
}
