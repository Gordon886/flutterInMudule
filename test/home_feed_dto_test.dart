import 'package:app_flutter/src/features/home/data/home_feed_dto.dart';
import 'package:app_flutter/src/features/home/data/home_mock_data_source.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('首页 JSON 能解析成 DTO', () {
    final dto = HomeFeedDto.fromJson(homeLobbyPayload());

    expect(dto.banner.amount, '₱18888');
    expect(dto.banner.eyebrow, 'GET UP TO');
    expect(dto.selectedCategoryId, 'slots');
    expect(dto.sections, hasLength(2));
    expect(dto.sections.first.title, 'Polular');
    expect(dto.header.actions.first.style, HomeActionStyleDto.plain);
    expect(dto.tabs[2].style, HomeTabStyleDto.center);
  });
}
