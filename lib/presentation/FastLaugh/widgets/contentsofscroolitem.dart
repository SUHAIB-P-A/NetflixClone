import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        CircleAvatar(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_off_outlined),
              ),
            ],
          ),
        )
      ],
    );
  }
}
