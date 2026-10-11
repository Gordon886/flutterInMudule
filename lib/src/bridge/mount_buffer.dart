import 'package:app_flutter/src/bridge/router_channel.dart';

/// 保住宿主在首帧之前发来的 mount，避免通道消息比 Widget 更早到达时被丢掉。
class MountBuffer {
  MountCommand? latest;
  void Function(MountCommand command)? _listener;

  void add(MountCommand command) {
    latest = command;
    _listener?.call(command);
  }

  void listen(void Function(MountCommand command)? listener) {
    _listener = listener;
  }
}
