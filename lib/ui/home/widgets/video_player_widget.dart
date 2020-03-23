import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    Key key,
    @required this.videoPath,
  })  : assert(videoPath != null),
        super(key: key);

  final String videoPath;

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayerWidget> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        _controller
          ..play()
          ..setLooping(true);

        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) => VideoPlayer(_controller);

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
