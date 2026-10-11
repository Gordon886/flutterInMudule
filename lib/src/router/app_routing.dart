import 'package:app_flutter/src/router/route_result.dart';

/// 页面唯一的跳转入口。实现可以是宿主通道，也可以是调试壳里的 Navigator。
abstract interface class AppRouting {
  Future<RouteResult> open(String routeId, {Map<String, Object?> params = const {}});

  Future<void> pop(RouteResult result);
}
