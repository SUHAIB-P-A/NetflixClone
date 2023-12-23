import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/Search/models/scaech_respo/result.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(_Initial()) {
    on<SearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
