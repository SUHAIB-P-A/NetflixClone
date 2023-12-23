part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<ScarchResultData> searchlist,
    required List<Downloads> idelsearchlist,
    required bool isloading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchlist: [],
        idelsearchlist: [],
        isloading: false,
        isError: false,
      );
}
