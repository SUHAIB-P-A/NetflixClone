import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          "Downloads",
          style: GoogleFonts.oswald(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast_outlined,
          color: white,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          color: blue,
          height: 25,
          width: 25,
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
