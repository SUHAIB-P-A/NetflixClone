import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class TextHotandNew extends StatelessWidget {
  final String movieName;
  final String overView;
  const TextHotandNew({
    super.key,
    required this.movieName,
    required this.overView,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "MASTER",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(right: 8, top: 8),
            child: Text(
              "Master is an action film from India about a professor, JD, who is sent to teach at a juvenile reform school for three months. He clashes with an unscrupulous man, Bhavani, who controls the school's young inmates to cover up his own criminal activities.",
              style: TextStyle(wordSpacing: -1, color: grey),
              textAlign: TextAlign.justify,
            ))
      ],
    );
  }
}
