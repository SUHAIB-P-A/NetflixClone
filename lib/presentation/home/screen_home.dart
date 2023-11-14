import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/home/widgets/title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(title: "Released in the past year"),
            MainCard(),
          ],
        ),
      ),
    );
  }
}

