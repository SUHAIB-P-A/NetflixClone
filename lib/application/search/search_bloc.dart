import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/Search/models/scaech_respo/result.dart';
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
    on<_Initial>((event, emit) {
      //get trending
      downloadservices.getdownloadsimages();
      //dispaly ui
    });
//search state
    on<_SearchMovie>((event, emit) {
      //scarch ang call api
      searchservies.searchMovies(movieQuary: event.movieQuary);
      //dispaly ui
    });
  }
}
