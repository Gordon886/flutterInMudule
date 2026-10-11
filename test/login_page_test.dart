import 'package:app_flutter/src/app/hosted_app.dart';
import 'package:app_flutter/src/app/standalone_app.dart';
import 'package:app_flutter/src/bridge/mount_buffer.dart';
import 'package:app_flutter/src/bridge/router_channel.dart';
import 'package:app_flutter/src/features/login/login_page.dart';
import 'package:app_flutter/src/router/app_routing.dart';
import 'package:app_flutter/src/router/route_result.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeRouter implements AppRouting {
  final opened = <String>[];
  Map<String, Object?>? lastParams;

  @override
  Future<RouteResult> open(String routeId, {Map<String, Object?> params = const {}}) async {
    opened.add(routeId);
    lastParams = params;
    return RouteResult.success();
  }

  @override
  Future<void> pop(RouteResult result) async {}
}

void main() {
  testWidgets('空用户名停留在登录页', (tester) async {
    final router = _FakeRouter();
    await tester.pumpWidget(
      MaterialApp(
        home: RouterScope(router: router, child: const LoginPage()),
      ),
    );

    await tester.tap(find.byKey(const Key('login-submit')));
    await tester.pump();

    expect(find.text('请输入用户名'), findsOneWidget);
    expect(router.opened, isEmpty);
  });

  testWidgets('登录把用户名交给 home 路由', (tester) async {
    final router = _FakeRouter();
    await tester.pumpWidget(
      MaterialApp(
        home: RouterScope(router: router, child: const LoginPage()),
      ),
    );

    await tester.enterText(find.byKey(const Key('login-username')), 'Ada');
    await tester.tap(find.byKey(const Key('login-submit')));
    await tester.pump();

    expect(router.opened, ['home']);
    expect(router.lastParams?['userName'], 'Ada');
  });

  testWidgets('调试壳和宿主启动时都显示登录', (tester) async {
    await tester.pumpWidget(const StandaloneApp());
    expect(find.text('登录'), findsOneWidget);

    await tester.pumpWidget(
      HostedApp(
        channel: RouterChannel(channel: const MethodChannel('app/router.test')),
        mounts: MountBuffer(),
      ),
    );
    expect(find.text('登录'), findsOneWidget);
  });
}
