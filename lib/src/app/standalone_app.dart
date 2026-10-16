import 'package:app_flutter/src/design/app_theme.dart';
import 'package:app_flutter/src/features/detail/detail_page.dart';
import 'package:app_flutter/src/features/home/presentation/pages/home_page.dart';
import 'package:app_flutter/src/features/login/login_page.dart';
import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/route_result.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:app_flutter/src/router/standalone_router.dart';
import 'package:flutter/material.dart';

class StandaloneApp extends StatefulWidget {
  const StandaloneApp({super.key});

  @override
  State<StandaloneApp> createState() => _StandaloneAppState();
}

class _StandaloneAppState extends State<StandaloneApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  late final StandaloneRouter _router = StandaloneRouter(_navigatorKey);

  @override
  Widget build(BuildContext context) {
    return RouterScope(
      router: _router,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '混合示例',
        theme: AppTheme.light(),
        navigatorKey: _navigatorKey,
        initialRoute: '/${RouteIds.login}',
        onGenerateRoute: _onGenerateRoute,
      ),
    );
  }

  Route<RouteResult> _onGenerateRoute(RouteSettings settings) {
    final id = (settings.name ?? RouteIds.login).replaceFirst('/', '');
    final params = stringParams(settings.arguments);
    final page = switch (id) {
      RouteIds.home => HomePage(userName: userNameFrom(params)),
      RouteIds.detail => DetailPage(userName: userNameFrom(params)),
      _ => const LoginPage(),
    };
    return MaterialPageRoute<RouteResult>(settings: settings, builder: (_) => page);
  }
}
