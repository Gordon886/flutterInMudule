import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/presentation/home_style.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_image.dart';
import 'package:flutter/material.dart';

class HomeCategoryBar extends StatelessWidget {
  const HomeCategoryBar({
    required this.categories,
    required this.selectedId,
    required this.searchIcon,
    required this.onSelected,
    super.key,
  });

  final List<HomeCategory> categories;
  final String selectedId;
  final String searchIcon;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    return SizedBox(
      height: metrics.s(108),
      child: Stack(
        children: [
          ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: metrics.s(8), right: metrics.s(88)),
            itemCount: categories.length,
            separatorBuilder: (_, _) => SizedBox(width: metrics.s(4)),
            itemBuilder: (context, index) {
              final item = categories[index];
              final active = item.id == selectedId;
              return SizedBox(
                width: metrics.s(108),
                child: InkWell(
                  onTap: () => onSelected(item.id),
                  child: Column(
                    children: [
                      SizedBox(
                        height: metrics.s(68),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (active)
                              Image.asset(
                                'assets/home/icon_slots_ring.png',
                                width: metrics.s(64),
                                height: metrics.s(64),
                                fit: BoxFit.contain,
                              ),
                            HomeImage(
                              item.icon,
                              width: metrics.s(42),
                              height: metrics.s(42),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        item.label,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: metrics.s(22),
                          fontWeight: active
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: active ? HomeColors.blue : HomeColors.category,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            width: metrics.s(96),
            child: const IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x00EDEEF0), HomeColors.background],
                    stops: [0, 0.45],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: metrics.s(12),
            top: metrics.s(10),
            child: HomeImage(
              searchIcon,
              width: metrics.s(64),
              height: metrics.s(64),
            ),
          ),
        ],
      ),
    );
  }
}
