import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/presentation/home_style.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_image.dart';
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({required this.header, required this.onAction, super.key});

  final HomeHeader header;
  final ValueChanged<HomeAction> onAction;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    return SizedBox(
      height: metrics.s(88),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          metrics.s(24),
          metrics.s(16),
          metrics.s(20),
          metrics.s(16),
        ),
        child: Row(
          children: [
            HomeImage(
              header.menuIcon,
              width: metrics.s(32),
              height: metrics.s(28),
            ),
            SizedBox(width: metrics.s(10)),
            HomeImage(header.logo, height: metrics.s(42)),
            const Spacer(),
            for (var index = 0; index < header.actions.length; index++) ...[
              if (index > 0) SizedBox(width: metrics.s(10)),
              _PillButton(
                action: header.actions[index],
                onPressed: () => onAction(header.actions[index]),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _PillButton extends StatelessWidget {
  const _PillButton({required this.action, required this.onPressed});

  final HomeAction action;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    final filled = action.style == HomeActionStyle.primary;
    final radius = BorderRadius.circular(metrics.s(16));
    return SizedBox(
      key: action.id == 'signup' ? const Key('home-signup') : null,
      width: metrics.s(120),
      height: metrics.s(55),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: filled ? null : HomeColors.loginFill,
          borderRadius: radius,
          gradient: filled
              ? const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [HomeColors.blue, HomeColors.blueTop],
                )
              : null,
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: onPressed,
            borderRadius: radius,
            child: Center(
              child: Text(
                action.label,
                style: TextStyle(
                  fontSize: metrics.s(20),
                  fontWeight: FontWeight.w600,
                  color: filled ? Colors.white : HomeColors.muted,
                  height: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
