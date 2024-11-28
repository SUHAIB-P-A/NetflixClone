import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_respo/hot_and_new_respo.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_services.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewServices _hotandnewservices;
  HotAndNewBloc(this._hotandnewservices) : super(HotAndNewState.initial()) {
/*
get hot and new movie data
*/

    on<Loaddataincommingsoon>((event, emit) async {
      /*
      ui loading
      */
      emit(const HotAndNewState(
          commingsoon: [],
          everyonewatching: [],
          isLoading: true,
          isError: false));
/* 
get data from remote 
*/
      final result = await _hotandnewservices.getHotAndNewMovieData();
      /*
     get failure
    */
      final newstate = result.fold(
        (MainFailures failure) {
          return const HotAndNewState(
            commingsoon: [],
            everyonewatching: [],
            isLoading: false,
            isError: true,
          );
        },
        /*
     get success
    */
        (HotAndNewRespo resp) {
          return HotAndNewState(
            commingsoon: resp.results,
            everyonewatching: state.everyonewatching,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(newstate);
    });

/*
get hot and new Tv data
*/
    on<Loaddataineveryoneiswatching>((event, emit) async {
/*
ui loading
*/
      emit(const HotAndNewState(
          commingsoon: [],
          everyonewatching: [],
          isLoading: true,
          isError: false));
/* 
get data from remote 
*/
      final result = await _hotandnewservices.getHotAndNewTvData();
/*
get failure
*/
      final newstate = result.fold(
        (MainFailures failure) {
          return const HotAndNewState(
            commingsoon: [],
            everyonewatching: [],
            isLoading: false,
            isError: true,
          );
        },
/*
get success
*/
        (HotAndNewRespo resp) {
          return HotAndNewState(
            commingsoon: state.commingsoon,
            everyonewatching: resp.results,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(newstate);
    });
  }
}
