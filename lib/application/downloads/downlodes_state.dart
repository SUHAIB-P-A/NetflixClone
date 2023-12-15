part of 'downlodes_bloc.dart';

@freezed
class DownlodesState with _$DownlodesState {
  const factory DownlodesState({
    required bool isLoading,
    required List<Downloads> downloads,
    required Option<Either<MainFailures, List<Downloads>>>
        downlodfailureorsuccessoption,
  }) = _DownlodesState;

  factory DownlodesState.initial() {
    return DownlodesState(
      isLoading: false,
      downlodfailureorsuccessoption: none(),
      downloads: [],
    );
  }
}
