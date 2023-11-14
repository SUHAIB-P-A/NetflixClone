import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String title;
  const MainText({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
