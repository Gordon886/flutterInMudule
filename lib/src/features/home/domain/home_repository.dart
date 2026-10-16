import 'package:app_flutter/src/features/home/domain/home_feed.dart';

abstract interface class HomeRepository {
  Future<HomeFeed> getHome();
}
