import 'package:app_flutter/src/core/error/failure.dart';
import 'package:app_flutter/src/features/home/data/home_feed_dto.dart';
import 'package:app_flutter/src/features/home/data/home_feed_mapper.dart';
import 'package:app_flutter/src/features/home/data/home_mock_data_source.dart';
import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/domain/home_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._source);

  final HomeRemoteDataSource _source;

  @override
  Future<HomeFeed> getHome() async {
    final Map<String, dynamic> json;
    try {
      json = await _source.fetchHome();
    } on Failure {
      rethrow;
    } catch (error, stackTrace) {
      throw UnknownFailure(
        message: 'Could not load the lobby',
        cause: error,
        stackTrace: stackTrace,
      );
    }

    try {
      return HomeFeedDto.fromJson(json).toEntity();
    } on Failure {
      rethrow;
    } on FormatException catch (error, stackTrace) {
      throw ParsingFailure(
        message: 'The lobby data could not be read',
        cause: error,
        stackTrace: stackTrace,
      );
    } catch (error, stackTrace) {
      throw ParsingFailure(
        message: 'The lobby data could not be read',
        cause: error,
        stackTrace: stackTrace,
      );
    }
  }
}
