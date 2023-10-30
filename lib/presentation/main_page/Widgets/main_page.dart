import 'package:flutter/material.dart';
import 'package:netflix/presentation/main_page/Widgets/bottam_nav.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: Text("screen main page")),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
