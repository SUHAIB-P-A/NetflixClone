import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView(
        children: const [
          khight,
          khight,
           Row(
            children: [
              kwidth,
              Icon(
                Icons.settings,
                color: white,
              ),
              Text("Smart Downloads"),
            ],
          ),
          Text("Indroducing Downloads for You"),
          Text("We'll download a personalised selection of\nmovies and shows for you, so there's \nalways something to watch on your\n device")
        ],
      ),
    );
  }
}
