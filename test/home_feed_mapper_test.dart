import 'package:app_flutter/src/features/home/data/home_feed_dto.dart';
import 'package:app_flutter/src/features/home/data/home_feed_mapper.dart';
import 'package:app_flutter/src/features/home/data/home_mock_data_source.dart';
import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('首页 DTO 映射成领域模型', () {
    final feed = HomeFeedDto.fromJson(homeLobbyPayload()).toEntity();

    expect(feed.banner.amount, '₱18888');
    expect(feed.sections, hasLength(2));
    expect(feed.sections.first.title, 'Polular');
    expect(feed.sections.first.games, hasLength(6));
    expect(feed.sections.first.games.first.routeId, 'detail');
    expect(feed.header.actions.last.style, HomeActionStyle.primary);
    expect(feed.categories[3].icon, 'builtin:bingo');
    expect(feed.tabs[2].style, HomeTabStyle.center);
    expect(feed.selectedCategoryId, 'slots');
  });
}
