import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';

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
          _bottomcommonsoon(context),
          _bottomeveryonewatching(),
        ]),
      ),
    );
  }

//comming soon screen
  Widget _bottomcommonsoon(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        khight20,
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 500,
              child: Column(
                children: [
                  Text(
                    "FEB",
                    style: TextStyle(
                      color: grey,
                    ),
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 500,
              width: size.width - 60,
              child: Stack(
                children: [
                  SizedBox(
                    height: 220,
                    width: double.infinity,
                    child: Image.network(
                      newandkottempimg,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    
                    bottom: 280,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: transparent.withOpacity(0.2),
                      radius: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off_outlined,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

//every ones watching screen
Widget _bottomeveryonewatching() {
  return ListView();
}
