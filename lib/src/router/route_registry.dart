enum RouteRuntime { flutter, native }

enum RoutePresentation { root, push, replace }

class RouteDefinition {
  const RouteDefinition({
    required this.id,
    required this.runtime,
    required this.presentation,
  });

  final String id;
  final RouteRuntime runtime;
  final RoutePresentation presentation;
}

/// 路由 ID 与 iOS `AppRoute` 保持一致。调用方只传 ID，不决定页面运行在哪一端。
abstract final class RouteIds {
  static const login = 'login';
  static const home = 'home';
  static const detail = 'detail';
}

abstract final class RouteRegistry {
  static const definitions = <RouteDefinition>[
    RouteDefinition(
      id: RouteIds.login,
      runtime: RouteRuntime.flutter,
      presentation: RoutePresentation.root,
    ),
    RouteDefinition(
      id: RouteIds.home,
      runtime: RouteRuntime.native,
      presentation: RoutePresentation.replace,
    ),
    RouteDefinition(
      id: RouteIds.detail,
      runtime: RouteRuntime.flutter,
      presentation: RoutePresentation.push,
    ),
  ];

  static RouteDefinition? find(String id) {
    for (final definition in definitions) {
      if (definition.id == id) return definition;
    }
    return null;
  }
}

String userNameFrom(Map<String, Object?> params) {
  final value = params['userName'];
  if (value is String && value.trim().isNotEmpty) return value.trim();
  return '访客';
}
