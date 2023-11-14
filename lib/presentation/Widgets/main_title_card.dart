import 'package:flutter/material.dart';
import 'package:netflix/presentation/Widgets/main_card.dart';
import 'package:netflix/presentation/Widgets/title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainText(title: title),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainCard(),
            ),
          ),
        ),
      ],
    );
  }
}
