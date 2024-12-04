import 'package:flutter/material.dart';
import 'package:netflix/presentation/Widgets/title.dart';
import 'package:netflix/presentation/home/widgets/numbercard.dart';

class NumberCardUi extends StatelessWidget {
  final List<String> posterPath;
  const NumberCardUi({
    super.key,
    required this.posterPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainText(title: "Top 10 Movie Shows In India Today"),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                posterPath.length,
                (index) => NumberCard(
                      index: index,
                      imageUrl: posterPath[index],
                    )),
          ),
        ),
      ],
    );
  }
}
