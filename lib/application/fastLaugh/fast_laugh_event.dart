part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initialize() = Initialize;
const factory FastLaughEvent.liker({
  required int id
}) = Liked;
const factory FastLaughEvent.unliked({
  required int id
}) = unliked;
}
