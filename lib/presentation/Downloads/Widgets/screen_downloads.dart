import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final List movielist = [
    'https://m.media-amazon.com/images/M/MV5BMDk0ZmVmMTktOGNiNS00Yzg5LWIzZTAtNjUxZWZhZDljY2Y0XkEyXkFqcGdeQXVyMTY1MzAyNjU4._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UY720_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNTMxZTQ1ZmEtOWM3Ny00MGQzLTgyMjgtZGMzNDM0YjVhZjMzXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UY467_.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/hTP1DtLGFamjfu8WqjnuQdP1n4i.jpg'
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
            //color: white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.37,
                  backgroundColor: downloadcirculargrey,
                ),
                downloadsimagewidget(size: size, movielist: movielist),
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

class downloadsimagewidget extends StatelessWidget {
  const downloadsimagewidget({
    super.key,
    required this.size,
    required this.movielist,
  });

  final Size size;
  final List movielist;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 20*pi/180,
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.58,
        //color: backgroundcolor,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           image: DecorationImage(
             image: NetworkImage(
               movielist[2],
             ),
           ),
         ),
      ),
    );
  }
}
