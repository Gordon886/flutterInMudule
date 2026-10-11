import 'package:app_flutter/src/router/app_routing.dart';
import 'package:flutter/widgets.dart';

class RouterScope extends InheritedWidget {
  const RouterScope({required this.router, required super.child, super.key});

  final AppRouting router;

  static AppRouting of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<RouterScope>();
    assert(scope != null, '页面需要放在 RouterScope 下面');
    return scope!.router;
  }

  @override
  bool updateShouldNotify(RouterScope oldWidget) => oldWidget.router != router;
}
