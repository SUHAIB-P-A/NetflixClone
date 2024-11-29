import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/strings.dart';

class ImageWedget extends StatelessWidget {
  final String posterpath;
  const ImageWedget({
    super.key,
    required this.posterpath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: Image.network(
            "$kimageurl$posterpath",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
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
