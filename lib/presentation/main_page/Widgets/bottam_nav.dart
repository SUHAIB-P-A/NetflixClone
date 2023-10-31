import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifier,
      builder: (
        context,
        newindex,
        _,
      ) {
        return BottomNavigationBar(
          currentIndex: newindex,
          onTap: (index) {
            indexchangenotifier.value=index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgroundcolor,
          selectedItemColor: white,
          unselectedItemColor: grey,
          selectedIconTheme: const IconThemeData(color: white),
          unselectedIconTheme: const IconThemeData(color: grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: "New & Hot",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions_outlined),
              label: "Fast Laughs",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_for_offline_outlined),
              label: "Downloads",
            ),
          ],
        );
      },
    );
  }
}
