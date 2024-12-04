import 'package:flutter/material.dart';
import 'package:netflix/core/constants/const.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 230,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: kradius10,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
