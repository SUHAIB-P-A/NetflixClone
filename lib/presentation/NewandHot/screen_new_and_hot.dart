import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/home/widgets/bottomicon.dart';

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
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
                  khight20,
                  const Row(
                    children: [
                      Text(
                        "MASTER",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          BottomIconHome(
                            icon: Icons.notifications_outlined,
                            text: "Remind Me",
                            iconsize: 30,
                            textsize: 8,
                          ),
                          kwidth20,
                          BottomIconHome(
                            icon: Icons.info_outline,
                            text: "Info",
                            iconsize: 30,
                            textsize: 8,
                          ),
                          kwidth,
                        ],
                      ),
                    ],
                  ),
                  khight,
                  const Text("comming On Friday"),
                  khight,
                  const Text(
                    "MASTER",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8, top: 8),
                    child: Text(
                      "Master is an action film from India about a professor, JD, who is sent to teach at a juvenile reform school for three months. He clashes with an unscrupulous man, Bhavani, who controls the school's young inmates to cover up his own criminal activities.",
                      style: TextStyle(
                        wordSpacing: -1,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//every ones watching screen
Widget _bottomeveryonewatching() {
  return ListView();
}
