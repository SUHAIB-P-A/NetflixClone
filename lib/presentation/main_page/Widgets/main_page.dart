import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/Downloads/Widgets/screen_downloads.dart';
import 'package:netflix/presentation/FastLaugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/NewandHot/screen_new_and_hot.dart';
import 'package:netflix/presentation/Search/screen_search.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/Widgets/bottam_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHome(),
    ScreenNewandHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownload(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
