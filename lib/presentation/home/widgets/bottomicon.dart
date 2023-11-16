import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class BottomIconHome extends StatelessWidget {
  final IconData icon;
  final String text;
  const BottomIconHome({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40,
          color: white,
        ),
        Text(text),
      ],
    );
  }
}
