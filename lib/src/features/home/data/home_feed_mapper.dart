import 'package:app_flutter/src/features/home/data/home_feed_dto.dart';
import 'package:app_flutter/src/features/home/domain/home_feed.dart';

extension HomeFeedDtoX on HomeFeedDto {
  HomeFeed toEntity() => HomeFeed(
    header: header.toEntity(),
    categories: [for (final category in categories) category.toEntity()],
    selectedCategoryId: selectedCategoryId,
    search: search.toEntity(),
    banner: banner.toEntity(),
    sections: [for (final section in sections) section.toEntity()],
    tabs: [for (final tab in tabs) tab.toEntity()],
  );
}

extension HomeHeaderDtoX on HomeHeaderDto {
  HomeHeader toEntity() => HomeHeader(
    menuIcon: menuIcon,
    logo: logo,
    actions: [for (final action in actions) action.toEntity()],
  );
}

extension HomeActionDtoX on HomeActionDto {
  HomeAction toEntity() => HomeAction(
    id: id,
    label: label,
    style: switch (style) {
      HomeActionStyleDto.plain => HomeActionStyle.plain,
      HomeActionStyleDto.primary => HomeActionStyle.primary,
    },
    routeId: routeId,
  );
}

extension HomeCategoryDtoX on HomeCategoryDto {
  HomeCategory toEntity() => HomeCategory(id: id, label: label, icon: icon);
}

extension HomeSearchDtoX on HomeSearchDto {
  HomeSearch toEntity() => HomeSearch(icon: icon);
}

extension HomeBannerDtoX on HomeBannerDto {
  HomeBanner toEntity() => HomeBanner(
    eyebrow: eyebrow,
    amount: amount,
    cadence: cadence,
    subtitle: subtitle,
    mascot: mascot,
    ranksLeft: ranksLeft,
    ranksRight: ranksRight,
    coins: coins,
  );
}

extension HomeSectionDtoX on HomeSectionDto {
  HomeSection toEntity() => HomeSection(
    id: id,
    title: title,
    moreLabel: moreLabel,
    games: [for (final game in games) game.toEntity()],
  );
}

extension HomeGameDtoX on HomeGameDto {
  HomeGame toEntity() =>
      HomeGame(id: id, name: name, cover: cover, routeId: routeId);
}

extension HomeTabDtoX on HomeTabDto {
  HomeTab toEntity() => HomeTab(
    id: id,
    label: label,
    icon: icon,
    style: switch (style) {
      HomeTabStyleDto.item => HomeTabStyle.item,
      HomeTabStyleDto.center => HomeTabStyle.center,
    },
    selected: selected,
  );
}
