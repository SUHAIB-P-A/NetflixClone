import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  const NumberCard({
    super.key,
    required this.index,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 150,
              width: 40,
            ),
            Container(
              height: 230,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: kradius10,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 15,
          bottom: 1,
          child: BorderedText(
            strokeWidth: 5.0,
            strokeColor: white,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: backgroundcolor.withOpacity(0.9)),
            ),
          ),
        )
      ],
    );
  }
}
