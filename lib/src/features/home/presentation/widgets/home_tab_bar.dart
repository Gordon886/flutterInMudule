import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/presentation/home_style.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_image.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({required this.tabs, super.key});

  final List<HomeTab> tabs;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    final bottom = MediaQuery.paddingOf(context).bottom;
    return SizedBox(
      height: metrics.s(108) + bottom,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: metrics.s(78) + bottom,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 12,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: bottom,
            child: SizedBox(
              height: metrics.s(96),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [for (final tab in tabs) _tab(tab)],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tab(HomeTab tab) {
    return switch (tab.style) {
      HomeTabStyle.center => _DepositTab(tab: tab),
      HomeTabStyle.item => _TabItem(tab: tab),
    };
  }
}

class _TabItem extends StatelessWidget {
  const _TabItem({required this.tab});

  final HomeTab tab;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    final color = tab.selected ? HomeColors.blue : HomeColors.muted;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: metrics.s(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HomeImage(tab.icon, width: metrics.s(32), height: metrics.s(32)),
            SizedBox(height: metrics.s(4)),
            Text(
              tab.label,
              style: TextStyle(
                fontSize: metrics.s(16),
                fontWeight: FontWeight.w600,
                color: color,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DepositTab extends StatelessWidget {
  const _DepositTab({required this.tab});

  final HomeTab tab;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    final color = tab.selected ? HomeColors.blue : HomeColors.muted;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: metrics.s(68),
            height: metrics.s(68),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF3D9BFF), HomeColors.blue],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x330064FF),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(metrics.s(8)),
            child: HomeImage(tab.icon),
          ),
          SizedBox(height: metrics.s(4)),
          Padding(
            padding: EdgeInsets.only(bottom: metrics.s(8)),
            child: Text(
              tab.label,
              style: TextStyle(
                fontSize: metrics.s(15),
                fontWeight: FontWeight.w700,
                color: color,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
