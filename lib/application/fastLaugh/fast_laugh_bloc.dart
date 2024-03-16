import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyvideo_url = [
  "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/Sintel.jpg",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4"
];
ValueNotifier<Set<int>> likedvideolist = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadRepo downloadserivies,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //fatch data(get trending movies)
      final result = await downloadserivies
          .getdownloadsimages(); // _result  get image from treiding movies it is used for DP image
      //initial loading state send to UI
      emit(const FastLaughState(
        isloading: true,
        iserror: false,
        listofmovies: [],
      ));
      final state = result.fold((l) {
        return const FastLaughState(
          isloading: false,
          iserror: true,
          listofmovies: [],
        );
      },
          (respo) => FastLaughState(
                isloading: false,
                iserror: false,
                listofmovies: respo,
              ));

      //send ui
      emit(state);

      //liked video
      on<Liked>((event, emit) async {
        likedvideolist.value.add(event.id);
      });

      //unliked video
      on<unliked>((event, emit) async {
        likedvideolist.value.remove(event.id);
      });
    });
  }
}
