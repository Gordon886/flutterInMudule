import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage(
    this.source, {
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    super.key,
  });

  final String source;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final child = switch (source) {
      'builtin:bingo' => const CustomPaint(
        painter: _BingoPainter(),
        child: SizedBox.expand(),
      ),
      'builtin:chip' => const CustomPaint(
        painter: _ChipPainter(),
        child: SizedBox.expand(),
      ),
      _ when source.startsWith('http://') || source.startsWith('https://') =>
        Image.network(
          source,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          errorBuilder: (_, _, _) => const SizedBox.shrink(),
        ),
      _ => Image.asset(
        source,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
      ),
    };
    if (source == 'builtin:bingo' || source == 'builtin:chip') {
      return SizedBox(width: width, height: height, child: child);
    }
    return child;
  }
}

class _BingoPainter extends CustomPainter {
  const _BingoPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final balls = [
      (
        const Offset(0.28, 0.62),
        const Color(0xFF3DDC97),
        const Color(0xFF0E9B62),
      ),
      (
        const Offset(0.72, 0.58),
        const Color(0xFF5B8CFF),
        const Color(0xFF2A4AD8),
      ),
      (
        const Offset(0.5, 0.32),
        const Color(0xFFB07CFF),
        const Color(0xFF6A3AD4),
      ),
    ];
    for (final (center, start, end) in balls) {
      final offset = Offset(center.dx * size.width, center.dy * size.height);
      final radius = size.shortestSide * 0.28;
      final paint = Paint()
        ..shader = RadialGradient(
          colors: [start, end],
          center: const Alignment(-0.3, -0.4),
        ).createShader(Rect.fromCircle(center: offset, radius: radius));
      canvas.drawCircle(offset, radius, paint);
      canvas.drawCircle(
        offset.translate(-radius * 0.28, -radius * 0.28),
        radius * 0.16,
        Paint()..color = const Color(0xCCFFFFFF),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _ChipPainter extends CustomPainter {
  const _ChipPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.shortestSide / 2;
    canvas.drawCircle(center, radius, Paint()..color = const Color(0xFF2F6BFF));
    final dash = Paint()
      ..color = const Color(0xFFFFD56A)
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius * 0.22
      ..strokeCap = StrokeCap.butt;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius * 0.72),
      -0.5,
      0.7,
      false,
      dash,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius * 0.72),
      1.2,
      0.7,
      false,
      dash,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius * 0.72),
      2.8,
      0.7,
      false,
      dash,
    );
    canvas.drawCircle(
      center,
      radius * 0.42,
      Paint()..color = const Color(0xFF163A9A),
    );
    canvas.drawCircle(
      center,
      radius * 0.42,
      Paint()
        ..color = const Color(0xFFFFE08A)
        ..style = PaintingStyle.stroke
        ..strokeWidth = radius * 0.06,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
