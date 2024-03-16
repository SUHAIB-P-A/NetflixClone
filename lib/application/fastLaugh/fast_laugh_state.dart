part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> listofmovies,
    required bool isloading,
    @Default([]) List<int> likedvideoids,
    required bool iserror,
  }) = _FastLaughState;

  factory FastLaughState.initial() => const FastLaughState(
        isloading: true,
        iserror: false,
        listofmovies: [],
      );
}
