// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeFeedDto _$HomeFeedDtoFromJson(Map<String, dynamic> json) => _HomeFeedDto(
  header: HomeHeaderDto.fromJson(json['header'] as Map<String, dynamic>),
  categories: (json['categories'] as List<dynamic>)
      .map((e) => HomeCategoryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  selectedCategoryId: json['selected_category_id'] as String,
  search: HomeSearchDto.fromJson(json['search'] as Map<String, dynamic>),
  banner: HomeBannerDto.fromJson(json['banner'] as Map<String, dynamic>),
  sections: (json['sections'] as List<dynamic>)
      .map((e) => HomeSectionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  tabs: (json['tabs'] as List<dynamic>)
      .map((e) => HomeTabDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeFeedDtoToJson(_HomeFeedDto instance) =>
    <String, dynamic>{
      'header': instance.header.toJson(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'selected_category_id': instance.selectedCategoryId,
      'search': instance.search.toJson(),
      'banner': instance.banner.toJson(),
      'sections': instance.sections.map((e) => e.toJson()).toList(),
      'tabs': instance.tabs.map((e) => e.toJson()).toList(),
    };

_HomeHeaderDto _$HomeHeaderDtoFromJson(Map<String, dynamic> json) =>
    _HomeHeaderDto(
      menuIcon: json['menu_icon'] as String,
      logo: json['logo'] as String,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => HomeActionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeHeaderDtoToJson(_HomeHeaderDto instance) =>
    <String, dynamic>{
      'menu_icon': instance.menuIcon,
      'logo': instance.logo,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
    };

_HomeActionDto _$HomeActionDtoFromJson(Map<String, dynamic> json) =>
    _HomeActionDto(
      id: json['id'] as String,
      label: json['label'] as String,
      style: $enumDecode(_$HomeActionStyleDtoEnumMap, json['style']),
      routeId: json['route_id'] as String,
    );

Map<String, dynamic> _$HomeActionDtoToJson(_HomeActionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'style': _$HomeActionStyleDtoEnumMap[instance.style]!,
      'route_id': instance.routeId,
    };

const _$HomeActionStyleDtoEnumMap = {
  HomeActionStyleDto.plain: 'plain',
  HomeActionStyleDto.primary: 'primary',
};

_HomeCategoryDto _$HomeCategoryDtoFromJson(Map<String, dynamic> json) =>
    _HomeCategoryDto(
      id: json['id'] as String,
      label: json['label'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$HomeCategoryDtoToJson(_HomeCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'icon': instance.icon,
    };

_HomeSearchDto _$HomeSearchDtoFromJson(Map<String, dynamic> json) =>
    _HomeSearchDto(icon: json['icon'] as String);

Map<String, dynamic> _$HomeSearchDtoToJson(_HomeSearchDto instance) =>
    <String, dynamic>{'icon': instance.icon};

_HomeBannerDto _$HomeBannerDtoFromJson(Map<String, dynamic> json) =>
    _HomeBannerDto(
      eyebrow: json['eyebrow'] as String,
      amount: json['amount'] as String,
      cadence: json['cadence'] as String,
      subtitle: json['subtitle'] as String,
      mascot: json['mascot'] as String,
      ranksLeft: json['ranks_left'] as String,
      ranksRight: json['ranks_right'] as String,
      coins: json['coins'] as String,
    );

Map<String, dynamic> _$HomeBannerDtoToJson(_HomeBannerDto instance) =>
    <String, dynamic>{
      'eyebrow': instance.eyebrow,
      'amount': instance.amount,
      'cadence': instance.cadence,
      'subtitle': instance.subtitle,
      'mascot': instance.mascot,
      'ranks_left': instance.ranksLeft,
      'ranks_right': instance.ranksRight,
      'coins': instance.coins,
    };

_HomeSectionDto _$HomeSectionDtoFromJson(Map<String, dynamic> json) =>
    _HomeSectionDto(
      id: json['id'] as String,
      title: json['title'] as String,
      moreLabel: json['more_label'] as String,
      games: (json['games'] as List<dynamic>)
          .map((e) => HomeGameDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeSectionDtoToJson(_HomeSectionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'more_label': instance.moreLabel,
      'games': instance.games.map((e) => e.toJson()).toList(),
    };

_HomeGameDto _$HomeGameDtoFromJson(Map<String, dynamic> json) => _HomeGameDto(
  id: json['id'] as String,
  name: json['name'] as String,
  cover: json['cover'] as String,
  routeId: json['route_id'] as String,
);

Map<String, dynamic> _$HomeGameDtoToJson(_HomeGameDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
      'route_id': instance.routeId,
    };

_HomeTabDto _$HomeTabDtoFromJson(Map<String, dynamic> json) => _HomeTabDto(
  id: json['id'] as String,
  label: json['label'] as String,
  icon: json['icon'] as String,
  style: $enumDecode(_$HomeTabStyleDtoEnumMap, json['style']),
  selected: json['selected'] as bool,
);

Map<String, dynamic> _$HomeTabDtoToJson(_HomeTabDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'icon': instance.icon,
      'style': _$HomeTabStyleDtoEnumMap[instance.style]!,
      'selected': instance.selected,
    };

const _$HomeTabStyleDtoEnumMap = {
  HomeTabStyleDto.item: 'item',
  HomeTabStyleDto.center: 'center',
};
