import 'package:injectable/injectable.dart';

abstract interface class HomeRemoteDataSource {
  Future<Map<String, dynamic>> fetchHome();
}

/// 首页接口尚未提供，先按约定的响应结构返回大厅数据。
@LazySingleton(as: HomeRemoteDataSource)
class HomeMockDataSource implements HomeRemoteDataSource {
  @override
  Future<Map<String, dynamic>> fetchHome() async => homeLobbyPayload();
}

Map<String, dynamic> homeLobbyPayload() {
  return <String, dynamic>{
    'header': <String, dynamic>{
      'menu_icon': 'assets/home/menu.png',
      'logo': 'assets/home/logo.png',
      'actions': <Map<String, dynamic>>[
        <String, dynamic>{
          'id': 'login',
          'label': 'Log in',
          'style': 'plain',
          'route_id': 'login',
        },
        <String, dynamic>{
          'id': 'signup',
          'label': 'Sign Up',
          'style': 'primary',
          'route_id': 'login',
        },
      ],
    },
    'categories': <Map<String, dynamic>>[
      _category('popular', 'Popular', 'assets/home/icon_popular.png'),
      _category('slots', 'Slots', 'assets/home/icon_slots.png'),
      _category('perya', 'Perya', 'assets/home/icon_perya.png'),
      _category('bingo', 'E-Bingo', 'builtin:bingo'),
      _category('table', 'Table', 'builtin:chip'),
      _category('fishing', 'Fishing', 'assets/home/icon_fishing.png'),
      _category('poker', 'Poker', 'assets/home/icon_poker.png'),
      _category('casino', 'Casino', 'assets/home/icon_casino.png'),
    ],
    'selected_category_id': 'slots',
    'search': <String, dynamic>{'icon': 'assets/home/icon_search.png'},
    'banner': <String, dynamic>{
      'eyebrow': 'GET UP TO',
      'amount': '₱18888',
      'cadence': 'PER DAY!',
      'subtitle': 'For Betting Leaderboard!',
      'mascot': 'assets/home/banner_mascot.png',
      'ranks_left': 'assets/home/banner_ranks_left.png',
      'ranks_right': 'assets/home/banner_ranks_right.png',
      'coins': 'assets/home/banner_coins.png',
    },
    'sections': <Map<String, dynamic>>[
      _section('popular-a'),
      _section('popular-b'),
    ],
    'tabs': <Map<String, dynamic>>[
      _tab('home', 'HOME', 'assets/home/tab_home.png', 'item', true),
      _tab('spin', 'SPIN', 'assets/home/tab_spin.png', 'item', false),
      _tab('deposit', 'DEPOSIT', 'assets/home/tab_wallet.png', 'center', true),
      _tab('promo', 'PROMO', 'assets/home/tab_promo.png', 'item', false),
      _tab('me', 'ME', 'assets/home/tab_me.png', 'item', false),
    ],
  };
}

Map<String, dynamic> _category(String id, String label, String icon) {
  return <String, dynamic>{'id': id, 'label': label, 'icon': icon};
}

Map<String, dynamic> _section(String id) {
  return <String, dynamic>{
    'id': id,
    'title': 'Polular',
    'more_label': 'More',
    'games': <Map<String, dynamic>>[
      _game('super-ace', 'assets/home/game_super_ace.png'),
      _game('lucky-fortunes', 'assets/home/game_lucky.png'),
      _game('showdown', 'assets/home/game_showdown.png'),
      _game('sugar-rush', 'assets/home/game_sugar.png'),
      _game('lucky-fortunes-2', 'assets/home/game_lucky.png'),
      _game('gates-of-olympus', 'assets/home/game_olympus.png'),
    ],
  };
}

Map<String, dynamic> _game(String id, String cover) {
  return <String, dynamic>{
    'id': id,
    'name': 'Game Name',
    'cover': cover,
    'route_id': 'detail',
  };
}

Map<String, dynamic> _tab(
  String id,
  String label,
  String icon,
  String style,
  bool selected,
) {
  return <String, dynamic>{
    'id': id,
    'label': label,
    'icon': icon,
    'style': style,
    'selected': selected,
  };
}
