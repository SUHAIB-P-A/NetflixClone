import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/NewandHot/widgets/text_widgets.dart';
import 'package:netflix/presentation/Widgets/iamge_widget.dart';
import 'package:netflix/presentation/home/widgets/bottomicon.dart';

class CommigSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String overview;
  final String movieName;

  const CommigSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.overview,
    required this.movieName,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 550,
          child: Column(
            children: [
              Text(
                month,
                style: const TextStyle(
                  color: grey,
                ),
              ),
              Text(
                day,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 550,
          width: size.width - 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWedget(
                posterpath: posterPath,
              ),
              khight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const Row(
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
              TextHotandNew(
                movieName: movieName,
                overView: overview,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
