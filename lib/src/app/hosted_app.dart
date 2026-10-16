import 'package:app_flutter/src/bridge/mount_buffer.dart';
import 'package:app_flutter/src/bridge/router_channel.dart';
import 'package:app_flutter/src/design/app_theme.dart';
import 'package:app_flutter/src/features/detail/detail_page.dart';
import 'package:app_flutter/src/features/home/presentation/pages/home_page.dart';
import 'package:app_flutter/src/features/login/login_page.dart';
import 'package:app_flutter/src/router/hosted_router.dart';
import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:flutter/material.dart';

class HostedApp extends StatefulWidget {
  const HostedApp({required this.channel, required this.mounts, super.key});

  final RouterChannel channel;
  final MountBuffer mounts;

  @override
  State<HostedApp> createState() => _HostedAppState();
}

class _HostedAppState extends State<HostedApp> {
  var _routeId = RouteIds.login;
  Map<String, Object?> _params = const {};
  String? _containerRequestId;
  late final HostedRouter _router = HostedRouter(
    channel: widget.channel,
    containerRequestId: () => _containerRequestId,
  );

  @override
  void initState() {
    super.initState();
    final pending = widget.mounts.latest;
    if (pending != null) _assign(pending);
    widget.mounts.listen((command) {
      if (!mounted) return;
      setState(() => _assign(command));
    });
  }

  @override
  void dispose() {
    widget.mounts.listen(null);
    super.dispose();
  }

  void _assign(MountCommand command) {
    _routeId = command.routeId;
    _params = command.params;
    _containerRequestId = command.requestId;
  }

  @override
  Widget build(BuildContext context) {
    return RouterScope(
      router: _router,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '混合示例',
        theme: AppTheme.light(),
        builder: (context, _) => _page(),
      ),
    );
  }

  Widget _page() {
    return switch (_routeId) {
      RouteIds.detail => DetailPage(userName: userNameFrom(_params)),
      RouteIds.home => HomePage(userName: userNameFrom(_params)),
      RouteIds.login => const LoginPage(),
      _ => Scaffold(body: Center(child: Text('未注册的 Flutter 路由 $_routeId'))),
    };
  }
}
