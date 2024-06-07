import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidgets extends StatelessWidget {
  const VideoWidgets({
    super.key,
    required this.userimage,
    required this.username,
    required this.time,
    required this.videoUrl,
    required this.like,
    required this.comments,
  });
  final String userimage;
  final String username;
  final String time;
  final String videoUrl;
  final String like;
  final String comments;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  userimage,
                ),
                radius: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    username,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.language,
                  color: Colors.black54,
                  size: 15,
                ),
              ),
              Spacer(),
              Icon(Icons.more_horiz),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.close,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          VideoPlayerWidget(videoUrl: videoUrl),
          Divider(),
          Row(
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blue[700],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                like,
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              Spacer(),
              Text(
                comments,
                style: TextStyle(color: Colors.black54, fontSize: 16),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.black54,
              ),
              Text(
                "Like",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              Icon(
                Icons.mode_comment_outlined,
                color: Colors.black54,
              ),
              Text("Comment",
                  style: TextStyle(color: Colors.black54, fontSize: 16)),
              Icon(
                Icons.phone_outlined,
                color: Colors.black54,
              ),
              Text(
                "Send",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              Icon(
                Icons.near_me,
                color: Colors.black54,
              ),
              Text("Share",
                  style: TextStyle(color: Colors.black54, fontSize: 16))
            ],
          ),
          Divider(
            color: Colors.black26,
            thickness: 4,
          ),
        ],
      ),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _videoPlayerController.initialize().then((Value) {
      setState(() {});
      _videoPlayerController.play();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_videoPlayerController.value.isPlaying) {
            _videoPlayerController.pause();
          } else {
            _videoPlayerController.play();
          }
        });
      },
      child: SizedBox(
          width: double.infinity,
          child: _videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: (VideoPlayer(_videoPlayerController)),
                )
              : Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
