import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/route_result.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = TextEditingController();
  String? _error;
  var _submitting = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final name = _controller.text.trim();
    if (name.isEmpty) {
      setState(() => _error = '请输入用户名');
      return;
    }
    setState(() {
      _error = null;
      _submitting = true;
    });
    final result = await RouterScope.of(context).open(RouteIds.home, params: {'userName': name});
    if (!mounted) return;
    setState(() => _submitting = false);
    if (result.status == RouteStatus.error) {
      setState(() => _error = '暂时无法打开首页');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
          children: [
            const Text(
              '登录',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Color(0xFF1C1C1E)),
            ),
            const SizedBox(height: 8),
            const Text('Flutter 页面，iOS 与 Android 共用', style: TextStyle(color: Color(0xFF6E7280))),
            const SizedBox(height: 32),
            TextField(
              key: const Key('login-username'),
              controller: _controller,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(hintText: '用户名'),
              onSubmitted: (_) => _submit(),
            ),
            if (_error != null) ...[
              const SizedBox(height: 12),
              Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ],
            const SizedBox(height: 24),
            FilledButton(
              key: const Key('login-submit'),
              onPressed: _submitting ? null : _submit,
              child: Text(_submitting ? '正在进入' : '进入首页'),
            ),
          ],
        ),
      ),
    );
  }
}
