import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Downloads"),
        const Icon(
          Icons.cast_outlined,
        ),
        Container(
          height: 25,
          width: 25,
        ),
      ],
    );
  }
}
