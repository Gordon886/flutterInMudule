import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/route_result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('三端约定的路由都已注册', () {
    expect(RouteRegistry.find(RouteIds.login)?.runtime, RouteRuntime.flutter);
    expect(RouteRegistry.find(RouteIds.home)?.runtime, RouteRuntime.flutter);
    expect(RouteRegistry.find(RouteIds.detail)?.presentation, RoutePresentation.push);
    expect(RouteRegistry.find('missing'), isNull);
  });

  test('路由结果可以往返序列化', () {
    final result = RouteResult.fromMap({
      'status': 'success',
      'result': {'message': 'ok'},
    });

    expect(result.status, RouteStatus.success);
    expect(result.result['message'], 'ok');
    expect(RouteResult.fromMap(result.toMap()).status, RouteStatus.success);
    expect(RouteResult.fromMap(null).code, 'bad_response');
  });
}
