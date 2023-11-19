import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: Text(
            "New & Hot",
            style: GoogleFonts.oswald(
              color: white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            const Icon(
              Icons.cast_outlined,
              color: white,
            ),
            kwidth,
            Container(
              color: blue,
              height: 25,
              width: 25,
            ),
            kwidth,
          ],
        ),
      ),
    );
  }
}
