import 'package:flutter/material.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/constants/strings.dart';

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
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: BlocBuilder<FastLaughBloc, FastLaughState>(
                        builder: (context, state) {
                          if (state.listofmovies.isEmpty) {
                            const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                '$kimageurl${state.listofmovies[index].posterPath}'),
                          );
                        },
                      ),
                    ),
                    const VideoActions(
                        icon: Icons.emoji_emotions_outlined, title: 'LOL'),
                    const VideoActions(icon: Icons.add, title: 'ADD'),
                    const VideoActions(icon: Icons.share, title: 'SHARE'),
                    const VideoActions(
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
