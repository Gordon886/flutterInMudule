enum RouteStatus { success, cancelled, error }

class RouteResult {
  const RouteResult({required this.status, this.result = const {}, this.code});

  final RouteStatus status;
  final Map<String, Object?> result;
  final String? code;

  factory RouteResult.success([Map<String, Object?> result = const {}]) {
    return RouteResult(status: RouteStatus.success, result: result);
  }

  factory RouteResult.cancelled() {
    return const RouteResult(status: RouteStatus.cancelled);
  }

  factory RouteResult.error(String code) {
    return RouteResult(status: RouteStatus.error, code: code);
  }

  Map<String, Object?> toMap() {
    return {
      'status': status.name,
      'result': result,
      if (code != null) 'code': code,
    };
  }

  factory RouteResult.fromMap(Object? raw) {
    final map = stringMap(raw);
    if (map == null) return RouteResult.error('bad_response');
    final status = RouteStatus.values.asNameMap()[map['status']] ?? RouteStatus.error;
    return RouteResult(
      status: status,
      result: stringParams(map['result']),
      code: map['code'] as String?,
    );
  }
}

Map<String, Object?>? stringMap(Object? raw) {
  if (raw is Map<String, Object?>) return raw;
  if (raw is Map) {
    return raw.map((key, value) => MapEntry(key.toString(), value));
  }
  return null;
}

Map<String, Object?> stringParams(Object? raw) => stringMap(raw) ?? const {};
