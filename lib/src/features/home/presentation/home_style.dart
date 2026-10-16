import 'package:flutter/material.dart';

const homeDesignWidth = 720.0;

abstract final class HomeColors {
  static const background = Color(0xFFEDEEF0);
  static const title = Color(0xFF0D2245);
  static const muted = Color(0xFF777F9B);
  static const category = Color(0xFF6D7693);
  static const blue = Color(0xFF0064FF);
  static const blueTop = Color(0xFF009EFF);
  static const loginFill = Color(0xFFE0E0E0);
}

class HomeMetrics extends InheritedWidget {
  const HomeMetrics({required this.scale, required super.child, super.key});

  final double scale;

  double s(num value) => value * scale;

  static HomeMetrics of(BuildContext context) {
    final metrics = context.dependOnInheritedWidgetOfExactType<HomeMetrics>();
    assert(metrics != null, 'HomePage 必须包在 HomeMetrics 里');
    return metrics!;
  }

  @override
  bool updateShouldNotify(HomeMetrics oldWidget) => oldWidget.scale != scale;
}
