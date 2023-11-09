import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

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
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: grey.withOpacity(0.4),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off_outlined),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://himalayantribune.com/wp-content/uploads/2020/07/TIGER-1024x647.jpg'),
                      ),
                    ),
                    VideoActions(
                        icon: Icons.emoji_emotions_outlined, title: 'LOL'),
                    VideoActions(icon: Icons.add, title: 'ADD'),
                    VideoActions(icon: Icons.share, title: 'SHARE'),
                    VideoActions(
                        icon: Icons.play_arrow_outlined, title: 'PLAY'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
