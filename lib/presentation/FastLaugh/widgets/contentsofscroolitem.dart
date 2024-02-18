import 'package:flutter/material.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/presentation/FastLaugh/screen_fast_laugh.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final videoUrl = dummyvideo_url[index % dummyvideo_url.length];
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.moviedata.posterPath;
    return Stack(
      children: [
        Videoplayer(videourl: videoUrl, onStateChanged: (bool) {}),
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
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: posterPath == null
                            ? null
                            : NetworkImage('$kimageurl$posterPath'),
                      ),
                    ),
                    const VideoActions(
                        icon: Icons.emoji_emotions_outlined, title: 'LOL'),
                    const VideoActions(icon: Icons.add, title: 'ADD'),
                    GestureDetector(
                      onTap: () async{
                        final text = VideoListItemInheritedWidget.of(context)
                            ?.moviedata
                            .title;
                        if (text != null) {
                         await Share.share(text);
                        }
                      },
                      child: const VideoActions(
                        icon: Icons.share,
                        title: 'SHARE',
                      ),
                    ),
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

class Videoplayer extends StatefulWidget {
  final String videourl;
  final void Function(bool isPlaying) onStateChanged;
  const Videoplayer({
    super.key,
    required this.videourl,
    required this.onStateChanged,
  });

  @override
  State<Videoplayer> createState() => _VideoplayerState();
}

class _VideoplayerState extends State<Videoplayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videourl));
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.pause();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(
                  _videoPlayerController,
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
