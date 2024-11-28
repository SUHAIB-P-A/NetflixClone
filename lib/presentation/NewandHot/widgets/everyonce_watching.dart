import 'package:flutter/material.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/NewandHot/widgets/text_widgets.dart';
import 'package:netflix/presentation/Widgets/iamge_widget.dart';
import 'package:netflix/presentation/home/widgets/bottomicon.dart';

class EvereonceWatching extends StatelessWidget {
  final String id;
  final String posterPath;
  final String overview;
  final String movieName;
  const EvereonceWatching({
    super.key,
    required this.id,
    required this.posterPath,
    required this.overview,
    required this.movieName,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //movie name  and discripsion
        TextHotandNew(),
        khight50,
        //image
        ImageWedget(),
        khight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //icons
            BottomIconHome(
              icon: Icons.send_outlined,
              text: "Share",
              iconsize: 35,
              textsize: 14,
            ),
            kwidth20,
            BottomIconHome(
              icon: Icons.add,
              text: "My List",
              iconsize: 35,
              textsize: 14,
            ),
            kwidth,
            BottomIconHome(
              icon: Icons.play_arrow_rounded,
              text: "Play",
              iconsize: 35,
              textsize: 14,
            ),
            kwidth20,
          ],
        ),
      ],
    );
  }
}
