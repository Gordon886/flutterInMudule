import 'package:app_flutter/src/core/error/failure.dart';
import 'package:app_flutter/src/features/home/data/home_mock_data_source.dart';
import 'package:app_flutter/src/features/home/data/home_repository_impl.dart';
import 'package:app_flutter/src/features/home/presentation/home/home_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('mock 首页能读成领域模型', () async {
    final feed = await HomeRepositoryImpl(HomeMockDataSource()).getHome();

    expect(feed.banner.amount, '₱18888');
    expect(feed.sections.first.title, 'Polular');
  });

  test('无法解析的响应变成 ParsingFailure', () async {
    final repository = HomeRepositoryImpl(_BrokenSource());

    await expectLater(repository.getHome(), throwsA(isA<ParsingFailure>()));
  });

  test('刷新保留用户选中的分类', () async {
    final cubit = HomeCubit(HomeRepositoryImpl(HomeMockDataSource()));
    addTearDown(cubit.close);

    await cubit.loadInitial();
    expect(cubit.state.status, HomeStatus.loaded);
    expect(cubit.state.selectedCategoryId, 'slots');

    cubit.selectCategory('poker');
    await cubit.refresh();

    expect(cubit.state.status, HomeStatus.loaded);
    expect(cubit.state.selectedCategoryId, 'poker');
    expect(cubit.state.feed!.sections, hasLength(2));
  });
}

class _BrokenSource implements HomeRemoteDataSource {
  @override
  Future<Map<String, dynamic>> fetchHome() async => <String, dynamic>{};
}
