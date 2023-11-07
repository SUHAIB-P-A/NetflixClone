import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/Search/widgets/screen_idel_scarch.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: grey,
                ),
                backgroundColor: grey.withOpacity(0.4),
                style: const TextStyle(color: white),
              ),
              khight,
              const ScarchIdel()
            ],
          ),
        ),
      ),
    );
  }
}
