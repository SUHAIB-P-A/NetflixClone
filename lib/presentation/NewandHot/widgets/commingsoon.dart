import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/NewandHot/widgets/text_widgets.dart';
import 'package:netflix/presentation/Widgets/iamge_widget.dart';
import 'package:netflix/presentation/home/widgets/bottomicon.dart';

class CommigSoonWidget extends StatelessWidget {
  const CommigSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 550,
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
          height: 550,
          width: size.width - 60,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWedget(),
              khight20,
              Row(
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
              Text("comming On Friday"),
              khight,
              TextHotandNew(),
            ],
          ),
        ),
      ],
    );
  }
}

