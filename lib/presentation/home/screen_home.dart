import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/main_title_card.dart';
import 'package:netflix/presentation/home/widgets/backgroundcard.dart';

import 'package:netflix/presentation/home/widgets/numberwidgetcard.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
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
                ListView(
                  children: const [
                    BackgroundCard(),
                    MainTitleCard(
                      title: "Released in the past year",
                    ),
                    khight,
                    MainTitleCard(
                      title: "Trending now",
                    ),
                    khight,
                    NumberCardUi(),
                    khight,
                    MainTitleCard(
                      title: "Tense Dramas",
                    ),
                    khight,
                    MainTitleCard(title: "South Indian Cinima")
                  ],
                ),
                scrollnotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 5000),
                        height: 100,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: NetworkImage(logonetflix),
                                  height: 40,
                                  width: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  casticon,
                                  color: white,
                                ),
                                kwidth,
                                Container(
                                  height: 20,
                                  width: 20,
                                  color: blue,
                                ),
                                kwidth,
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "TV Shows",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Movies",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "categories",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : khight
              ],
            ),
          );
        },
      )),
    );
  }
}
