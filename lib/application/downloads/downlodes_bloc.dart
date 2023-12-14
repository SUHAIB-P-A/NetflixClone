import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'downlodes_event.dart';
part 'downlodes_state.dart';
part 'downlodes_bloc.freezed.dart';

class DownlodesBloc extends Bloc<DownlodesEvent, DownlodesState> {
  final IDownloadRepo downloadsrepo;
  DownlodesBloc(this.downloadsrepo) : super(DownlodesState.initial()) {
    on<_Getdownloadsimages>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        downlodfailureorsuccessoption: none(),
      ));
      final Either<MainFailures, List<Downloads>> downlaodOption =
          await downloadsrepo.getdownloadsimages();
      emit(
        downlaodOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downlodfailureorsuccessoption: some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downlodfailureorsuccessoption: some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
