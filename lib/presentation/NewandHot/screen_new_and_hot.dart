import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/NewandHot/widgets/commingsoon.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "New & Hot",
              style: GoogleFonts.oswald(
                color: white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast_outlined,
                color: white,
              ),
              kwidth,
              Container(
                color: blue,
                height: 25,
                width: 25,
              ),
              kwidth,
            ],
            bottom: TabBar(
              tabAlignment: TabAlignment.center,
              padding: const EdgeInsets.only(top: 20),
              dividerColor: transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: transparent,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              isScrollable: true,
              unselectedLabelColor: white,
              labelColor: backgroundcolor,
              indicator: BoxDecoration(
                color: white,
                borderRadius: kradius30,
              ),
              tabs: const [
                Tab(
                  height: 40,
                  text: "🍿 Comming Soon",
                ),
                Tab(
                  height: 40,
                  text: "👀 Everyone's Watching",
                )
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          _bottomcommonsoon(),
          _bottomeveryonewatching(),
        ]),
      ),
    );
  }

//comming soon screen
  Widget _bottomcommonsoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (
        BuildContext context,
        index,
      ) =>
          const CommigSoonWidget(),
    );
  }
}

//every ones watching screen
Widget _bottomeveryonewatching() {
  return ListView();
}
