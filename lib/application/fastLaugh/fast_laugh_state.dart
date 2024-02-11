part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required bool isloading,
    required bool iserror,
    required List<Downloads> listofmovies,
  }) = _FastLaughState;

  factory FastLaughState.initial()=>const FastLaughState(isloading: true, iserror: false, listofmovies: []);
}
