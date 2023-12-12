part of 'downlodes_bloc.dart';

@freezed
class DownlodesState with _$DownlodesState {
  const factory DownlodesState(
    {
      required bool isLoading,
      List<Downloads>? downloads,
    }
  ) = _DownlodesState;
}
