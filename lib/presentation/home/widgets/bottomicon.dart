import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class BottomIconHome extends StatelessWidget {
  const BottomIconHome({
    required this.icon,
    required this.text,
    this.textsize = 16,
    this.iconsize = 40,
    super.key,
  });
  final IconData icon;
  final String text;
  final double textsize;
  final double iconsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconsize,
          color: white,
        ),
        Text(
          text,
          style:  TextStyle(
            fontSize: textsize,
          ),
        ),
      ],
    );
  }
}
