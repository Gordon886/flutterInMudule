import 'dart:developer' as developer;

import 'package:app_flutter/src/router/route_result.dart';
import 'package:flutter/services.dart';

class MountCommand {
  const MountCommand({required this.routeId, required this.params, this.requestId});

  final String routeId;
  final Map<String, Object?> params;
  final String? requestId;

  factory MountCommand.fromMap(Object? raw) {
    final map = stringMap(raw) ?? const <String, Object?>{};
    final routeId = map['routeId'];
    return MountCommand(
      routeId: routeId is String ? routeId : '',
      params: stringParams(map['params']),
      requestId: map['requestId'] as String?,
    );
  }
}

/// 与 iOS `RouterBridge` 对应的唯一通道。业务页面不直接使用它。
class RouterChannel {
  RouterChannel({MethodChannel? channel}) : _channel = channel ?? const MethodChannel(name);

  static const name = 'app/router';

  final MethodChannel _channel;

  void install(void Function(MountCommand command) onMount) {
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'mount':
          final command = MountCommand.fromMap(call.arguments);
          developer.log('mount ${command.routeId}', name: 'router');
          onMount(command);
          return null;
        default:
          throw MissingPluginException('未实现 ${call.method}');
      }
    });
  }

  Future<RouteResult> open({
    required String routeId,
    required String requestId,
    required String presentation,
    Map<String, Object?> params = const {},
  }) async {
    developer.log('open $routeId', name: 'router');
    try {
      final raw = await _channel.invokeMethod<Object?>('open', {
        'routeId': routeId,
        'requestId': requestId,
        'presentation': presentation,
        'params': params,
      });
      return RouteResult.fromMap(raw);
    } on MissingPluginException {
      return RouteResult.error('host_missing');
    } on PlatformException catch (error) {
      return RouteResult.error(error.code);
    }
  }

  Future<void> pop({required String requestId, required RouteResult result}) {
    developer.log('pop $requestId ${result.status.name}', name: 'router');
    return _channel.invokeMethod<void>('pop', {
      'requestId': requestId,
      'status': result.status.name,
      'result': result.result,
      if (result.code != null) 'code': result.code,
    });
  }
}
