import 'package:flutter/material.dart';
import 'package:netflix/presentation/Widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: Center(
        child: Text("Downloads"),
      ),
    );
  }
}
