import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc() : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) {
      
      //fatch data(get trending movies)
      
      //send ui
    });
  }
}
