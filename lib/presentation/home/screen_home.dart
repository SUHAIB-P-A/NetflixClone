import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainText(title: "Released in the past year"),
          ],
        ),
      ),
    );
  }
}
