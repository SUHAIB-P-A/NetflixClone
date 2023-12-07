import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';

class ImageWedget extends StatelessWidget {
  const ImageWedget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: Image.network(
            newandkottempimg,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          bottom: 280,
          right: 5,
          child: CircleAvatar(
            backgroundColor: transparent.withOpacity(0.2),
            radius: 20,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off_outlined,
                color: white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
