import 'package:flutter/material.dart';
import 'package:netflix/presentation/Widgets/main_card.dart';
import 'package:netflix/presentation/Widgets/title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    required this.title,
    super.key,
    required this.posterList,
  });
  final String title;
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    if (posterList.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainText(title: title),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              posterList.length,
              (index) =>  MainCard(imageUrl: posterList[index],),
            ),
          ),
        ),
      ],
    );
  }
}
