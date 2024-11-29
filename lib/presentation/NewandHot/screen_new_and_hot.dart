import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/hotandnew/hot_and_new_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/NewandHot/widgets/commingsoon.dart';
import 'package:netflix/presentation/NewandHot/widgets/everyonce_watching.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "New & Hot",
              style: GoogleFonts.oswald(
                color: white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast_outlined,
                color: white,
              ),
              kwidth,
              Container(
                color: blue,
                height: 25,
                width: 25,
              ),
              kwidth,
            ],
            bottom: TabBar(
              tabAlignment: TabAlignment.center,
              padding: const EdgeInsets.only(top: 20),
              dividerColor: transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: transparent,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              isScrollable: true,
              unselectedLabelColor: white,
              labelColor: backgroundcolor,
              indicator: BoxDecoration(
                color: white,
                borderRadius: kradius30,
              ),
              tabs: const [
                Tab(
                  height: 40,
                  text: "🍿 Comming Soon",
                ),
                Tab(
                  height: 40,
                  text: "👀 Everyone's Watching",
                )
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          _bottomcommonsoon(),
          _bottomeveryonewatching(),
        ]),
      ),
    );
  }

//comming soon screen
  Widget _bottomcommonsoon() {
    return const CommingSoonList();
  }
}

class CommingSoonList extends StatelessWidget {
  const CommingSoonList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
WidgetsBinding.instance.addPostFrameCallback((_) {
  BlocProvider.of<HotAndNewBloc>(context).add(const Loaddataincommingsoon());
},);

    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 1,
            ),
          );
        } else if (state.isError) {
          return const Center(
            child: Text(
              "Error while load comming soon data",
            ),
          );
        } else if (state.commingsoon.isEmpty) {
          return const Center(
            child: Text(
              "Comming soon list is empty",
            ),
          );
        } else {
          return ListView.builder(
              itemCount: state.commingsoon.length,
              itemBuilder: (
                BuildContext context,
                index,
              ) {
                final movie = state.commingsoon[index];

                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CommigSoonWidget(
                    id: movie.id == null ? "" : movie.id.toString(),
                    month: "MAR",
                    day: "11",
                    posterPath: movie.posterPath == null
                        ? "no image"
                        : movie.posterPath.toString(),
                    overview: movie.overview == null
                        ? "no overview"
                        : movie.overview.toString(),
                    movieName: movie.title == null
                        ? "no title"
                        : movie.title.toString(),
                  ),
                );
              });
        }
      },
    );
  }
}

//every ones watching screen
Widget _bottomeveryonewatching() {
  return const EveryoneisWatchingList();
}

class EveryoneisWatchingList extends StatelessWidget {
  const EveryoneisWatchingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const Loaddataineveryoneiswatching());
      },
    );
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 1,
            ),
          );
        } else if (state.isError) {
          return const Center(
            child: Text(
              "Error while load comming soon data",
            ),
          );
        } else if (state.everyonewatching.isEmpty) {
          return const Center(
            child: Text(
              "Comming soon list is empty",
            ),
          );
        } else {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (
              BuildContext context,
              intex,
            ) {
              final movie = state.everyonewatching[intex];
              return Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: EvereonceWatching(
                  id: movie.id == null ? "" : movie.id.toString(),
                  posterPath: movie.posterPath == null
                      ? "no image"
                      : movie.posterPath.toString(),
                  overview: movie.overview == ""
                      ? "no overview"
                      : movie.overview.toString(),
                  movieName:
                      movie.originalTitle == null ? "no title" : movie.originalTitle.toString(),
                ),
              );
            },
          );
        }
      },
    );
  }
}
