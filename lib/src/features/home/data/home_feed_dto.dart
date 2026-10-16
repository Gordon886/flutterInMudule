import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_feed_dto.freezed.dart';
part 'home_feed_dto.g.dart';

enum HomeActionStyleDto {
  @JsonValue('plain')
  plain,
  @JsonValue('primary')
  primary,
}

enum HomeTabStyleDto {
  @JsonValue('item')
  item,
  @JsonValue('center')
  center,
}

@freezed
sealed class HomeFeedDto with _$HomeFeedDto {
  const factory HomeFeedDto({
    required HomeHeaderDto header,
    required List<HomeCategoryDto> categories,
    @JsonKey(name: 'selected_category_id') required String selectedCategoryId,
    required HomeSearchDto search,
    required HomeBannerDto banner,
    required List<HomeSectionDto> sections,
    required List<HomeTabDto> tabs,
  }) = _HomeFeedDto;

  factory HomeFeedDto.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedDtoFromJson(json);
}

@freezed
sealed class HomeHeaderDto with _$HomeHeaderDto {
  const factory HomeHeaderDto({
    @JsonKey(name: 'menu_icon') required String menuIcon,
    required String logo,
    required List<HomeActionDto> actions,
  }) = _HomeHeaderDto;

  factory HomeHeaderDto.fromJson(Map<String, dynamic> json) =>
      _$HomeHeaderDtoFromJson(json);
}

@freezed
sealed class HomeActionDto with _$HomeActionDto {
  const factory HomeActionDto({
    required String id,
    required String label,
    required HomeActionStyleDto style,
    @JsonKey(name: 'route_id') required String routeId,
  }) = _HomeActionDto;

  factory HomeActionDto.fromJson(Map<String, dynamic> json) =>
      _$HomeActionDtoFromJson(json);
}

@freezed
sealed class HomeCategoryDto with _$HomeCategoryDto {
  const factory HomeCategoryDto({
    required String id,
    required String label,
    required String icon,
  }) = _HomeCategoryDto;

  factory HomeCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$HomeCategoryDtoFromJson(json);
}

@freezed
sealed class HomeSearchDto with _$HomeSearchDto {
  const factory HomeSearchDto({required String icon}) = _HomeSearchDto;

  factory HomeSearchDto.fromJson(Map<String, dynamic> json) =>
      _$HomeSearchDtoFromJson(json);
}

@freezed
sealed class HomeBannerDto with _$HomeBannerDto {
  const factory HomeBannerDto({
    required String eyebrow,
    required String amount,
    required String cadence,
    required String subtitle,
    required String mascot,
    @JsonKey(name: 'ranks_left') required String ranksLeft,
    @JsonKey(name: 'ranks_right') required String ranksRight,
    required String coins,
  }) = _HomeBannerDto;

  factory HomeBannerDto.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerDtoFromJson(json);
}

@freezed
sealed class HomeSectionDto with _$HomeSectionDto {
  const factory HomeSectionDto({
    required String id,
    required String title,
    @JsonKey(name: 'more_label') required String moreLabel,
    required List<HomeGameDto> games,
  }) = _HomeSectionDto;

  factory HomeSectionDto.fromJson(Map<String, dynamic> json) =>
      _$HomeSectionDtoFromJson(json);
}

@freezed
sealed class HomeGameDto with _$HomeGameDto {
  const factory HomeGameDto({
    required String id,
    required String name,
    required String cover,
    @JsonKey(name: 'route_id') required String routeId,
  }) = _HomeGameDto;

  factory HomeGameDto.fromJson(Map<String, dynamic> json) =>
      _$HomeGameDtoFromJson(json);
}

@freezed
sealed class HomeTabDto with _$HomeTabDto {
  const factory HomeTabDto({
    required String id,
    required String label,
    required String icon,
    required HomeTabStyleDto style,
    required bool selected,
  }) = _HomeTabDto;

  factory HomeTabDto.fromJson(Map<String, dynamic> json) =>
      _$HomeTabDtoFromJson(json);
}
