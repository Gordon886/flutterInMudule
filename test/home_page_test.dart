import 'package:app_flutter/src/core/di/injection.dart';
import 'package:app_flutter/src/features/home/presentation/pages/home_page.dart';
import 'package:app_flutter/src/router/app_routing.dart';
import 'package:app_flutter/src/router/route_result.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeRouter implements AppRouting {
  final opened = <String>[];

  @override
  Future<RouteResult> open(
    String routeId, {
    Map<String, Object?> params = const {},
  }) async {
    opened.add(routeId);
    return RouteResult.success();
  }

  @override
  Future<void> pop(RouteResult result) async {}
}

void main() {
  setUp(() async {
    await getIt.reset();
    configureDependencies();
  });

  tearDown(() async {
    await getIt.reset();
  });

  testWidgets('首页展示设计稿上的主要内容', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final router = _FakeRouter();
    await tester.pumpWidget(
      RouterScope(
        router: router,
        child: const MaterialApp(home: HomePage(userName: 'Ada')),
      ),
    );
    await tester.pump();

    expect(find.text('Sign Up'), findsOneWidget);
    expect(find.text('Log in'), findsOneWidget);
    expect(find.text('Slots'), findsOneWidget);
    expect(find.text('GET UP TO'), findsOneWidget);
    expect(find.text('₱18888'), findsOneWidget);
    expect(find.text('Polular'), findsWidgets);
    expect(find.text('HOME'), findsOneWidget);
    expect(find.text('DEPOSIT'), findsOneWidget);

    await tester.tap(find.byKey(const Key('home-banner')));
    await tester.pump();
    expect(router.opened, ['deposit']);

    await tester.tap(find.byKey(const Key('home-signup')));
    await tester.pump();
    expect(router.opened, ['deposit', 'login']);
  });
}
