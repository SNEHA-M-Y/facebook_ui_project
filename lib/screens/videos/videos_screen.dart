import 'package:facebook_ui_project/screens/videos/video_widgets.dart';
import 'package:flutter/material.dart';

class ScreenVideos extends StatefulWidget {
  const ScreenVideos({super.key});

  @override
  State<ScreenVideos> createState() => _ScreenVideosState();
}

class _ScreenVideosState extends State<ScreenVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Video",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Icon(
              Icons.person,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.black,
            )
          ],
        ),
        Divider(
          thickness: 4,
          color: Colors.black12,
        ),
        VideoWidgets(
            userimage:
                'https://i.pinimg.com/736x/06/c1/25/06c125ca5119c84d8900f9a8cf546d33.jpg',
            username: "Zara",
            time: "Jan 9",
            videoUrl:
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
            like: "128",
            comments: '64 comments'),
        VideoWidgets(
            userimage:
                "https://i.pinimg.com/originals/d9/0f/8a/d90f8a2c59a9dcc0e12ee8a16c9d16c2.jpg",
            username: "Arjun",
            time: "Dec 31",
            videoUrl:
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
            like: "125",
            comments: "201 Comments"),
        VideoWidgets(
            userimage:
                "https://writestylesonline.com/wp-content/uploads/2017/02/How-to-Rock-a-Choker-as-an-Adult_square.jpg",
            username: "Helen",
            time: "2 Nov ",
            videoUrl:
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
            like: "112",
            comments: "138 Comments")
      ],
    ));
  }
}
