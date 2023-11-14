import 'package:flutter/material.dart';
import 'package:netflix/presentation/Widgets/main_card.dart';
import 'package:netflix/presentation/Widgets/title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MainTitleCard(),
      ),
    );
  }
}


