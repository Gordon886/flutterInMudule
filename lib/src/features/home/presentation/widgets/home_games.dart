import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/presentation/home_style.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_image.dart';
import 'package:flutter/material.dart';

class HomeGameSection extends StatelessWidget {
  const HomeGameSection({
    required this.section,
    required this.onOpen,
    super.key,
  });

  final HomeSection section;
  final ValueChanged<HomeGame> onOpen;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    final rows = _rowsOfThree(section.games);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        metrics.s(24),
        metrics.s(22),
        metrics.s(24),
        0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                section.title,
                style: TextStyle(
                  fontSize: metrics.s(32),
                  fontWeight: FontWeight.w800,
                  color: HomeColors.title,
                  height: 1,
                ),
              ),
              const Spacer(),
              Text(
                section.moreLabel,
                style: TextStyle(
                  fontSize: metrics.s(22),
                  fontWeight: FontWeight.w500,
                  color: HomeColors.muted,
                ),
              ),
            ],
          ),
          SizedBox(height: metrics.s(12)),
          for (final row in rows) ...[
            Row(
              children: [
                for (var index = 0; index < row.length; index++) ...[
                  if (index > 0) SizedBox(width: metrics.s(14)),
                  Expanded(
                    child: _GameCard(game: row[index], onOpen: onOpen),
                  ),
                ],
              ],
            ),
            SizedBox(height: metrics.s(14)),
          ],
        ],
      ),
    );
  }
}

List<List<HomeGame>> _rowsOfThree(List<HomeGame> games) {
  final rows = <List<HomeGame>>[];
  for (var index = 0; index < games.length; index += 3) {
    final end = index + 3 > games.length ? games.length : index + 3;
    rows.add(games.sublist(index, end));
  }
  return rows;
}

class _GameCard extends StatelessWidget {
  const _GameCard({required this.game, required this.onOpen});

  final HomeGame game;
  final ValueChanged<HomeGame> onOpen;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    final radius = BorderRadius.circular(metrics.s(16));
    return Material(
      color: Colors.white,
      borderRadius: radius,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => onOpen(game),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: HomeImage(game.cover, fit: BoxFit.cover),
            ),
            SizedBox(
              height: metrics.s(40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: metrics.s(8)),
                  child: Text(
                    game.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: metrics.s(22),
                      color: HomeColors.title,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
