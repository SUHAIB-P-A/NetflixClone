import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/Search/models/scaech_respo/result.dart';
import 'package:netflix/domain/Search/models/scaech_respo/scaech_respo.dart';
import 'package:netflix/domain/Search/scarchservices.dart';
import 'package:netflix/domain/core/failures/main_failures.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/infrastructure/scarchservices/searchservices.dart';
import 'package:netflix/presentation/Search/widgets/screen_idel_scarch.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo downloadservices;
  final Searchservices searchservies;
  SearchBloc(
    this.downloadservices,
    this.searchservies,
  ) : super(SearchState.initial()) {
//idel state
    on<_Initial>((event, emit) async {
      if (state.idelsearchlist.isNotEmpty) {
        emit(SearchState(
          searchlist: [],
          idelsearchlist: state.idelsearchlist,
          isloading: false,
          isError: false,
        ));
      }

      //get trending
      final resultidel = await downloadservices.getdownloadsimages();
      final _state = resultidel.fold(
        (MainFailures l) {
          return const SearchState(
            searchlist: [],
            idelsearchlist: [],
            isloading: false,
            isError: true,
          );
        },
        (List<Downloads> list) {
          return SearchState(
            searchlist: [],
            idelsearchlist: list,
            isloading: false,
            isError: false,
          );
        },
      );
      //dispaly ui
      emit(_state);
    });
//search state
    on<_SearchMovie>((event, emit) async {
      //scarch ang call api
      final _resultSearch =
          await searchservies.searchMovies(movieQuary: event.movieQuary);
      emit(const SearchState(
        searchlist: [],
        idelsearchlist: [],
        isloading: false,
        isError: false,
      ));

      final _state = _resultSearch.fold((MainFailures l) {
        return const SearchState(
          searchlist: [],
          idelsearchlist: [],
          isloading: false,
          isError: true,
        );
      }, (ScaechRespo r) {
        return SearchState(
          searchlist: r.results,
          idelsearchlist: [],
          isloading: false,
          isError: false,
        );
      });
      //dispaly ui
      emit(_state);
    });
  }
}
