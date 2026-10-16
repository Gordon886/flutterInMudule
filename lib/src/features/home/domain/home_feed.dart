enum HomeActionStyle { plain, primary }

enum HomeTabStyle { item, center }

class HomeFeed {
  const HomeFeed({
    required this.header,
    required this.categories,
    required this.selectedCategoryId,
    required this.search,
    required this.banner,
    required this.sections,
    required this.tabs,
  });

  final HomeHeader header;
  final List<HomeCategory> categories;
  final String selectedCategoryId;
  final HomeSearch search;
  final HomeBanner banner;
  final List<HomeSection> sections;
  final List<HomeTab> tabs;
}

class HomeHeader {
  const HomeHeader({
    required this.menuIcon,
    required this.logo,
    required this.actions,
  });

  final String menuIcon;
  final String logo;
  final List<HomeAction> actions;
}

class HomeAction {
  const HomeAction({
    required this.id,
    required this.label,
    required this.style,
    required this.routeId,
  });

  final String id;
  final String label;
  final HomeActionStyle style;
  final String routeId;
}

class HomeCategory {
  const HomeCategory({
    required this.id,
    required this.label,
    required this.icon,
  });

  final String id;
  final String label;
  final String icon;
}

class HomeSearch {
  const HomeSearch({required this.icon});

  final String icon;
}

class HomeBanner {
  const HomeBanner({
    required this.eyebrow,
    required this.amount,
    required this.cadence,
    required this.subtitle,
    required this.mascot,
    required this.ranksLeft,
    required this.ranksRight,
    required this.coins,
  });

  final String eyebrow;
  final String amount;
  final String cadence;
  final String subtitle;
  final String mascot;
  final String ranksLeft;
  final String ranksRight;
  final String coins;
}

class HomeSection {
  const HomeSection({
    required this.id,
    required this.title,
    required this.moreLabel,
    required this.games,
  });

  final String id;
  final String title;
  final String moreLabel;
  final List<HomeGame> games;
}

class HomeGame {
  const HomeGame({
    required this.id,
    required this.name,
    required this.cover,
    required this.routeId,
  });

  final String id;
  final String name;
  final String cover;
  final String routeId;
}

class HomeTab {
  const HomeTab({
    required this.id,
    required this.label,
    required this.icon,
    required this.style,
    required this.selected,
  });

  final String id;
  final String label;
  final String icon;
  final HomeTabStyle style;
  final bool selected;
}
