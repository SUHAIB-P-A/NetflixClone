import 'package:flutter/material.dart';
import 'package:netflix/core/constants/const.dart';

class MainCard extends StatelessWidget {
  const MainCard({
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
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://m.media-amazon.com/images/M/MV5BZGJkMDUwZWQtYTMzMS00NTg5LWE1ZTYtOTVhMDI4NGI1YjMyXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1013_.jpg"),
          ),
        ),
      ),
    );
  }
}
