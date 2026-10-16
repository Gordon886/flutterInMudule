import 'package:app_flutter/src/core/error/failure.dart';
import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/domain/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(const HomeState());

  final HomeRepository _repository;

  Future<void> loadInitial() async {
    emit(state.copyWith(status: HomeStatus.loading, failure: null));
    await _fetch(HomeStatus.loaded);
  }

  Future<void> refresh() async {
    if (!state.hasData) {
      await loadInitial();
      return;
    }
    emit(state.copyWith(status: HomeStatus.refreshing, failure: null));
    await _fetch(HomeStatus.loaded);
  }

  void selectCategory(String id) {
    final categories = state.feed?.categories;
    if (categories == null) return;
    final exists = categories.any((category) => category.id == id);
    if (!exists || state.selectedCategoryId == id) return;
    emit(state.copyWith(selectedCategoryId: id));
  }

  Future<void> _fetch(HomeStatus success) async {
    try {
      final feed = await _repository.getHome();
      if (isClosed) return;
      final previous = state.selectedCategoryId;
      final keepSelection =
          previous != null &&
          feed.categories.any((category) => category.id == previous);
      emit(
        state.copyWith(
          status: success,
          feed: feed,
          selectedCategoryId: keepSelection
              ? previous
              : feed.selectedCategoryId,
          failure: null,
        ),
      );
    } on Failure catch (failure) {
      if (isClosed) return;
      emit(state.copyWith(status: HomeStatus.error, failure: failure));
    }
  }
}
