import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/main_title_card.dart';
import 'package:netflix/presentation/home/widgets/backgroundcard.dart';

import 'package:netflix/presentation/home/widgets/numberwidgetcard.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            return true;
          },
          child: ListView(
            children: [
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
        ),
      ),
    );
  }
}
