import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
