import 'package:app_flutter/src/router/route_result.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.userName, super.key});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('详情'),
        leading: IconButton(
          onPressed: () => RouterScope.of(context).pop(RouteResult.cancelled()),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          children: [
            Text(
              userName,
              style: const TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Color(0xFF1C1C1E)),
            ),
            const SizedBox(height: 8),
            const Text(
              'Flutter 页面。从原生首页进入，返回时把结果交回上一页。',
              style: TextStyle(color: Color(0xFF6E7280), height: 1.4),
            ),
            const SizedBox(height: 32),
            FilledButton(
              key: const Key('detail-done'),
              onPressed: () {
                RouterScope.of(context).pop(RouteResult.success({'message': '$userName 已查看详情'}));
              },
              child: const Text('完成并返回'),
            ),
          ],
        ),
      ),
    );
  }
}
