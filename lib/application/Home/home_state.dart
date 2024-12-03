part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<HotAndNewData> pastYearMovieList,
    required List<HotAndNewData> trendingNow,
    required List<HotAndNewData> tenseDramas,
    required List<HotAndNewData> southIndianCinima,
    required List<HotAndNewData> top10Movies,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        pastYearMovieList: [],
        trendingNow: [],
        tenseDramas: [],
        southIndianCinima: [],
        top10Movies: [],
        isLoading: false,
        isError: false,
      );
}
