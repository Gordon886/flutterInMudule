import 'package:app_flutter/src/bridge/router_channel.dart';
import 'package:app_flutter/src/router/app_routing.dart';
import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/route_result.dart';

class HostedRouter implements AppRouting {
  HostedRouter({required this.channel, required this.containerRequestId});

  final RouterChannel channel;
  final String? Function() containerRequestId;
  var _sequence = 0;

  @override
  Future<RouteResult> open(String routeId, {Map<String, Object?> params = const {}}) {
    final definition = RouteRegistry.find(routeId);
    if (definition == null) {
      return Future.value(RouteResult.error('route_not_found'));
    }
    return channel.open(
      routeId: routeId,
      requestId: '${DateTime.now().microsecondsSinceEpoch}-${_sequence++}',
      presentation: definition.presentation.name,
      params: params,
    );
  }

  @override
  Future<void> pop(RouteResult result) {
    final requestId = containerRequestId();
    if (requestId == null) return Future.value();
    return channel.pop(requestId: requestId, result: result);
  }
}
