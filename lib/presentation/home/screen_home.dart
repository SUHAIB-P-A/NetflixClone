import 'package:flutter/material.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/main_card.dart';
import 'package:netflix/presentation/Widgets/main_title_card.dart';
import 'package:netflix/presentation/Widgets/title.dart';
import 'package:netflix/presentation/home/widgets/numbercard.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainTitleCard(
                title: "Released in the past year",
              ),
              khight,
              MainTitleCard(
                title: "Trending now",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainText(title: "Top 10 Movie Shows In India Today"),
                  LimitedBox(
                    maxHeight: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        10,
                        (index) => NumberCard(
                          index: index,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
