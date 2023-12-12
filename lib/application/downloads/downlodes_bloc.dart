import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'downlodes_event.dart';
part 'downlodes_state.dart';
part 'downlodes_bloc.freezed.dart';

class DownlodesBloc extends Bloc<DownlodesEvent, DownlodesState> {
  DownlodesBloc() : super(_Initial()) {
    on<DownlodesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
