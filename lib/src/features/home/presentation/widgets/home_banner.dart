import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/presentation/home_style.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_image.dart';
import 'package:flutter/material.dart';

class HomeBannerView extends StatelessWidget {
  const HomeBannerView({
    required this.banner,
    required this.onTap,
    super.key,
  });

  final HomeBanner banner;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        metrics.s(24),
        metrics.s(4),
        metrics.s(24),
        0,
      ),
      child: GestureDetector(
        key: const Key('home-banner'),
        onTap: onTap,
        child: ClipRRect(
        borderRadius: BorderRadius.circular(metrics.s(16)),
        child: SizedBox(
          height: metrics.s(320),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.2, -1),
                end: Alignment(0.9, 1),
                colors: [
                  Color(0xFF29B0F9),
                  Color(0xFF0B7EC4),
                  Color(0xFF005C92),
                ],
                stops: [0.15, 0.55, 1],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: metrics.s(-8),
                  top: metrics.s(6),
                  bottom: metrics.s(4),
                  width: metrics.s(300),
                  child: HomeImage(
                    banner.mascot,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Positioned(
                  left: metrics.s(230),
                  top: metrics.s(128),
                  width: metrics.s(168),
                  child: HomeImage(banner.ranksLeft),
                ),
                Positioned(
                  right: metrics.s(6),
                  top: metrics.s(148),
                  width: metrics.s(146),
                  child: HomeImage(banner.ranksRight),
                ),
                Positioned(
                  left: metrics.s(120),
                  right: metrics.s(8),
                  bottom: metrics.s(-4),
                  height: metrics.s(86),
                  child: HomeImage(
                    banner.coins,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Positioned(
                  left: metrics.s(18),
                  top: metrics.s(28),
                  width: metrics.s(330),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          banner.eyebrow,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: metrics.s(48),
                            fontWeight: FontWeight.w900,
                            height: 1,
                            letterSpacing: metrics.s(0.4),
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: ShaderMask(
                          shaderCallback: (bounds) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white, Color(0xFFFFF27C)],
                            ).createShader(bounds);
                          },
                          child: Text(
                            banner.amount,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: metrics.s(72),
                              fontWeight: FontWeight.w900,
                              height: 1.02,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        banner.cadence,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: metrics.s(24),
                          fontWeight: FontWeight.w900,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(height: metrics.s(10)),
                      Text(
                        banner.subtitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: metrics.s(22),
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}
