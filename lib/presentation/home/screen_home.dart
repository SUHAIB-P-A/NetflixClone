import 'package:flutter/material.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
