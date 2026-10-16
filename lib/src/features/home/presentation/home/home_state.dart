part of 'home_cubit.dart';

enum HomeStatus { initial, loading, refreshing, loaded, error }

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    HomeFeed? feed,
    String? selectedCategoryId,
    Failure? failure,
  }) = _HomeState;

  const HomeState._();

  bool get isLoading => status == HomeStatus.loading;

  bool get hasData => feed != null;

  bool get showBlockingLoader =>
      !hasData && (status == HomeStatus.initial || isLoading);

  bool get showBlockingError => !hasData && status == HomeStatus.error;
}
