import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';

class BottomIconHome extends StatelessWidget {
  const BottomIconHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          addicon,
          color: white,
        ),
        Text("Add List"),
      ],
    );
  }
}
