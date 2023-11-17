import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';

class HideingBar extends StatelessWidget {
  const HideingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 5000),
      height: 100,
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Image(
                image: NetworkImage(logonetflix),
                height: 40,
                width: 60,
              ),
              const Spacer(),
              const Icon(
                casticon,
                color: white,
              ),
              kwidth,
              Container(
                height: 20,
                width: 20,
                color: blue,
              ),
              kwidth,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "TV Shows",
                style: kstyle,
              ),
              Text(
                "Movies",
                style: kstyle,
              ),
              Text(
                "categories",
                style: kstyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
