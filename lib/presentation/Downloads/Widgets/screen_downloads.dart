import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              SizedBox(
                width: 2,
              ),
              Text("Smart Downloads"),
            ],
          ),
          // text
          Center(
            child: Text(
              "Indroducing Downloads for You",
              style: GoogleFonts.oswald(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          //text
          const Center(
            child: Text(
              "We'll download a personalised selection of\n     movies and shows for you, so there's\n      always something to watch on your\n                            device",
              style: TextStyle(
                fontSize: 14,
                color: grey,
              ),
            ),
          ),
          // rotated image container
          SizedBox(
            height: size.width,
            width: size.width,
            //color: white,
            child: Stack(
              // alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: size.width * 0.39,
                    backgroundColor: downloadcirculargrey,
                  ),
                ),
                //img 1
                Downloadsimagewidget(
                  movielist: movielist[2],
                  margin: const EdgeInsets.only(left: 160),
                  angle: 15,
                ),
                //img2
                Downloadsimagewidget(
                  movielist: movielist[1],
                  margin: const EdgeInsets.only(
                    right: 160,
                  ),
                  angle: -15,
                ),
                //img3
                Downloadsimagewidget(
                  movielist: movielist[0],
                  margin: const EdgeInsets.only(left: 0, top: 15),
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

// extract widget
class Downloadsimagewidget extends StatelessWidget {
  const Downloadsimagewidget({
    super.key,
    required this.movielist,
    this.angle = 0,
    required this.margin,
  });

  final String movielist;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Center(
        child: Container(
          margin: margin,
          width: size.width * 0.4,
          height: size.width * 0.58,
          //color: backgroundcolor,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                movielist,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
