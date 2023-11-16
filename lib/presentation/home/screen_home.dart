import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/main_title_card.dart';
import 'package:netflix/presentation/home/widgets/bottomicon.dart';
import 'package:netflix/presentation/home/widgets/numberwidgetcard.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 650,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(img),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BottomIconHome(icon: addicon, text: "Add List"),
                          TextButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(white),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              playicon,
                              color: backgroundcolor,
                            ),
                            label: Text(
                              'Play',
                              style: TextStyle(
                                color: backgroundcolor,
                              ),
                            ),
                          ),
                          BottomIconHome(
                            icon: infoicon,
                            text: "Info",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              MainTitleCard(
                title: "Released in the past year",
              ),
              khight,
              MainTitleCard(
                title: "Trending now",
              ),
              khight,
              NumberCardUi(),
              khight,
              MainTitleCard(
                title: "Tense Dramas",
              ),
              khight,
              MainTitleCard(title: "South Indian Cinima")
            ],
          ),
        ),
      ),
    );
  }
}
