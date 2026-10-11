import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/route_result.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:flutter/material.dart';

/// 仅调试壳使用。iOS 宿主里同名路由 `home` 由 Swift 页面实现。
class HomePlaceholderPage extends StatefulWidget {
  const HomePlaceholderPage({required this.userName, super.key});

  final String userName;

  @override
  State<HomePlaceholderPage> createState() => _HomePlaceholderPageState();
}

class _HomePlaceholderPageState extends State<HomePlaceholderPage> {
  String _message = '从这里进入 Flutter 详情页';

  Future<void> _openDetail() async {
    final result = await RouterScope.of(context).open(
      RouteIds.detail,
      params: {'userName': widget.userName},
    );
    if (!mounted) return;
    setState(() {
      _message = switch (result.status) {
        RouteStatus.success => result.result['message'] as String? ?? '已返回',
        RouteStatus.cancelled => '已取消',
        RouteStatus.error => '无法打开详情',
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('首页')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          children: [
            const Text('Flutter 调试壳', style: TextStyle(color: Color(0xFF6E7280))),
            const SizedBox(height: 8),
            Text(
              '你好，${widget.userName}',
              style: const TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            const Text(
              '在 iOS 宿主中，这一页是 Swift 原生页面。调试壳用这个占位页把同一条路由跑通。',
              style: TextStyle(color: Color(0xFF6E7280), height: 1.4),
            ),
            const SizedBox(height: 24),
            Text(_message, style: const TextStyle(fontSize: 16, height: 1.4)),
            const SizedBox(height: 24),
            FilledButton(
              key: const Key('open-detail'),
              onPressed: _openDetail,
              child: const Text('查看详情'),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => RouterScope.of(context).open(RouteIds.login),
              child: const Text('返回登录'),
            ),
          ],
        ),
      ),
    );
  }
}
