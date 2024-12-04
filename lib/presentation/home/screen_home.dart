import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/Home/home_bloc.dart';

import 'package:netflix/core/constants/const.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/presentation/Widgets/main_title_card.dart';
import 'package:netflix/presentation/home/widgets/backgroundcard.dart';
import 'package:netflix/presentation/home/widgets/hideingbar.dart';

import 'package:netflix/presentation/home/widgets/numberwidgetcard.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<HomeBloc>(context).add(const Gethomescreendata());
      },
    );
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (
          context,
          value,
          _,
        ) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              //print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollnotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollnotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      );
                    }
                    if (state.isError) {
                      const Center(
                        child: Text("No data found"),
                      );
                    }

                    //relesse past year
                    final relesedPastYear = state.pastYearMovieList.map(
                      (m) {
                        //log('$kimageurl${m.posterPath}');
                        return '$kimageurl${m.posterPath}';
                      },
                    ).toList();

                    // trending now
                    final trendingnow = state.trendingNow.map(
                      (m) {
                        //log('$kimageurl${m.posterPath}');
                        return '$kimageurl${m.posterPath}';
                      },
                    ).toList();
                    trendingnow.shuffle();

                    // Tense dramas
                    final tensedrama = state.tenseDramas.map(
                      (m) {
                        //log('$kimageurl${m.posterPath}');
                        return '$kimageurl${m.posterPath}';
                      },
                    ).toList();
                    tensedrama.shuffle();

                    // South indian
                    final southIndian = state.southIndianCinima.map(
                      (m) {
                        //log('$kimageurl${m.posterPath}');
                        return '$kimageurl${m.posterPath}';
                      },
                    ).toList();
                    southIndian.shuffle();

                    return ListView(
                      children: [
                        const BackgroundCard(),
                        MainTitleCard(
                          title: "Released in the past year",
                          posterList: relesedPastYear.sublist(0, 10),
                        ),
                        khight,
                        MainTitleCard(
                          title: "Trending now",
                          posterList: trendingnow.sublist(0, 10),
                        ),
                        khight,
                        const NumberCardUi(),
                        khight,
                        MainTitleCard(
                          title: "Tense Dramas",
                          posterList: tensedrama.sublist(0, 10),
                        ),
                        khight,
                        MainTitleCard(
                          title: "South Indian Cinima",
                          posterList: southIndian.sublist(0, 10),
                        )
                      ],
                    );
                  },
                ),
                scrollnotifier.value == true ? const HideingBar() : khight
              ],
            ),
          );
        },
      )),
    );
  }
}
