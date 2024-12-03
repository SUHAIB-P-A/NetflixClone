import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_respo/hot_and_new_respo.dart';
import 'package:netflix/domain/hot_and_new_respo/model/hot_and_new_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewServices _homeservices;
  HomeBloc(this._homeservices) : super(HomeState.initial()) {
    /* 
    on event get home screen data
    */
    on<Gethomescreendata>((event, emit) async {
      // send loading to ui
      emit(const HomeState(
        pastYearMovieList: [],
        trendingNow: [],
        tenseDramas: [],
        southIndianCinima: [],
        top10Movies: [],
        isLoading: true,
        isError: false,
      ));

      // get data
      final movieResult = await _homeservices.getHotAndNewMovieData();
      final tvResult = await _homeservices.getHotAndNewTvData();

      // transform data
      final resultMovie = movieResult.fold(
        (MainFailures failur) {
          return const HomeState(
            pastYearMovieList: [],
            trendingNow: [],
            tenseDramas: [],
            southIndianCinima: [],
            top10Movies: [],
            isLoading: false,
            isError: true,
          );
        },
        (HotAndNewRespo resp) {
          final pastYear = resp.results;
          final treanding = resp.results;
          final tenseDrama = resp.results;
          final southindia = resp.results;
          pastYear.shuffle();
          treanding.shuffle();
          tenseDrama.shuffle();
          southindia.shuffle();
          return HomeState(
            pastYearMovieList: pastYear,
            trendingNow: treanding,
            tenseDramas: tenseDrama,
            southIndianCinima: southindia,
            top10Movies: state.top10Movies,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(resultMovie);
// only for top10
      final resultTv = tvResult.fold(
        (MainFailures failur) {
          return const HomeState(
            pastYearMovieList: [],
            trendingNow: [],
            tenseDramas: [],
            southIndianCinima: [],
            top10Movies: [],
            isLoading: false,
            isError: true,
          );
        },
        (HotAndNewRespo resp) {
          final top10 = resp.results;
          top10.shuffle();
          return HomeState(
            pastYearMovieList: state.pastYearMovieList,
            trendingNow: state.trendingNow,
            tenseDramas: state.tenseDramas,
            southIndianCinima: state.southIndianCinima,
            top10Movies: top10,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(resultTv);
    });
  }
}
