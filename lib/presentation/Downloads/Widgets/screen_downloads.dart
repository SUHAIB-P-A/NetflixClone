import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final List movielist = [
    'https://www.themoviedb.org/movie/945729',
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
                  radius: size.width * 0.33,
                ),
                Container(
                  width: size.width * 0.3,
                  height: size.width * 0.5,
                  color: backgroundcolor,
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
