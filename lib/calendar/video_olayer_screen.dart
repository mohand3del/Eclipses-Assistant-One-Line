import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayerScreen extends StatefulWidget {
  final String videoFilePath;

  CustomVideoPlayerScreen({required this.videoFilePath});

  @override
  _CustomVideoPlayerScreenState createState() =>
      _CustomVideoPlayerScreenState();
}

class _CustomVideoPlayerScreenState extends State<CustomVideoPlayerScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    // Initialize the video player controller with the provided video file path
    controller = VideoPlayerController.asset(widget.videoFilePath)
      ..initialize().then((_) {
        // Ensure the first frame is shown
        setState(() {});
      })..setVolume(1.0) // Adjust the volume as needed
      ..setLooping(true) // Set looping as needed
      ..addListener(() {
        if (controller.value.hasError) {
          print('VideoPlayerController error: ${controller.value
              .errorDescription}');
        }
      });
    _playVideo();
  }

  void _playVideo() async {
    controller.play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            )
          : Container(),
    );
  }
}
