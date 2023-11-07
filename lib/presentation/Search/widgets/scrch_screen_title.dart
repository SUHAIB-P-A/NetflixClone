import 'package:flutter/material.dart';

class ScarchTitle extends StatelessWidget {
  final String title;
  const ScarchTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
