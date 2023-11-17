import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/presentation/home/widgets/bottomicon.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 650,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(img),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const BottomIconHome(icon: addicon, text: "Add List"),
                          _playbutton(),
                          const BottomIconHome(
                            icon: infoicon,
                            text: "Info",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
  }
}

TextButton _playbutton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(white),
      ),
      onPressed: () {},
      icon: const Icon(
        playicon,
        color: backgroundcolor,
      ),
      label: const Text(
        'Play',
        style: TextStyle(
          color: backgroundcolor,
        ),
      ),
    );
  }
