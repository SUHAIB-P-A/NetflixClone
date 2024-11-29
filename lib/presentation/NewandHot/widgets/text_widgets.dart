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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movieName,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 8),
          child: Text(
            overView,
            style: const TextStyle(wordSpacing: -1, color: grey),
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
          ),
        ),
      ],
    );
  }
}
