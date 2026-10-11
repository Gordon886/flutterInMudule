import 'package:app_flutter/src/router/app_routing.dart';
import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/route_result.dart';
import 'package:flutter/widgets.dart';

class StandaloneRouter implements AppRouting {
  StandaloneRouter(this._navigatorKey);

  final GlobalKey<NavigatorState> _navigatorKey;

  @override
  Future<RouteResult> open(String routeId, {Map<String, Object?> params = const {}}) async {
    final definition = RouteRegistry.find(routeId);
    final navigator = _navigatorKey.currentState;
    if (definition == null || navigator == null) {
      return RouteResult.error(definition == null ? 'route_not_found' : 'navigator_unavailable');
    }

    final name = '/$routeId';
    if (definition.presentation != RoutePresentation.push) {
      navigator.pushNamedAndRemoveUntil(name, (route) => false, arguments: params);
      return RouteResult.success();
    }

    final value = await navigator.pushNamed<RouteResult>(name, arguments: params);
    return value ?? RouteResult.cancelled();
  }

  @override
  Future<void> pop(RouteResult result) async {
    _navigatorKey.currentState?.pop(result);
  }
}
