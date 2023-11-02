import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final List movielist = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/A4j8S6moJS2zNtRR8oWF08gRnL5.jpg',
    'https://www.themoviedb.org/movie/575264',
    'https://www.themoviedb.org/movie/926393',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView(
        children: [
          khight,
          khight,
          const Row(
            children: [
              kwidth,
              // top icon
              Icon(
                Icons.settings,
                color: white,
              ),
              Text("Smart Downloads"),
            ],
          ),
          // text
          const Text("Indroducing Downloads for You"),
          //text
          const Text(
              "We'll download a personalised selection of\nmovies and shows for you, so there's \nalways something to watch on your\n device"),
          // rotated image container
          Container(
            height: size.width,
            width: size.width,
            color: white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.37,
                ),
                Container(
                  width: size.width * 0.45,
                  height: size.width * 0.58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: NetworkImage(
                        movielist[0],
                        scale: 5.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //setup button
          MaterialButton(
            onPressed: () {},
            color: downloadmeterialblue,
            child: const Text(
              "Setup",
              style: TextStyle(
                color: white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //another botton
          MaterialButton(
            onPressed: () {},
            color: downloadmeterialwhite,
            child: const Text(
              "See What you can download",
              style: TextStyle(
                color: backgroundcolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
