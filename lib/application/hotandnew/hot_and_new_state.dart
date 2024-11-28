part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required List<HotAndNewData> commingsoon,
    required List<HotAndNewData> everyonewatching,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotAndNewState.initial() => const HotAndNewState(
        commingsoon: [],
        everyonewatching: [],
        isLoading: false,
        isError: false,
      );
}
