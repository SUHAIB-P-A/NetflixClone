import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              Icon(
                Icons.settings,
                color: white,
              ),
              Text("Smart Downloads"),
            ],
          ),
          const Text("Indroducing Downloads for You"),
          const Text(
              "We'll download a personalised selection of\nmovies and shows for you, so there's \nalways something to watch on your\n device"),
          Container(
            height: size.width,
            width: size.width,
          ),
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
