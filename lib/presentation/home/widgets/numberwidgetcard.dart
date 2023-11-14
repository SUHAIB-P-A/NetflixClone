import 'package:flutter/material.dart';
import 'package:netflix/presentation/Widgets/title.dart';
import 'package:netflix/presentation/home/widgets/numbercard.dart';

class NumberCardUi extends StatelessWidget {
  const NumberCardUi({
    super.key,
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
                10,
                (index) => NumberCard(
                      index: index,
                    )),
          ),
        ),
      ],
    );
  }
}
