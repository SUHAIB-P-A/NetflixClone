import 'package:flutter/material.dart';
import 'package:netflix/presentation/FastLaugh/widgets/contentsofscroolitem.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: List.generate(
            10,
            (index) {
              return const VideoListItem();
            },
          ),
        ),
      ),
    );
  }
}
