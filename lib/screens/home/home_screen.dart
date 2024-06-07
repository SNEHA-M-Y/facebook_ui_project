import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg",
                  ),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 40,
                  width: 290,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "What's On Your Mind?",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black54)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.photo_library,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black26,
            thickness: 4,
          ),
          Container(
            height: 240,
            width: double.infinity,
            child: GridView(
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 10, mainAxisExtent: 150),
              children: [
                Stack(
                  children: [
                    Container(
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 239, 245),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 160),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.blue[700],
                          size: 50,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 30,
                      child: Text(
                        "Create Story",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                StoryWidget(
                  storyimage:
                      "https://th.bing.com/th/id/OIP.jryuUgIHWL-1FVD2ww8oWgHaHa?rs=1&pid=ImgDetMain",
                  name: "Mariya",
                ),
                StoryWidget(
                  storyimage:
                      "https://writestylesonline.com/wp-content/uploads/2017/02/How-to-Rock-a-Choker-as-an-Adult_square.jpg",
                  name: "Helen",
                ),
                StoryWidget(
                  storyimage:
                      "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=00592c46602fb834808160b3e1a77182&w=1000&q=80",
                  name: "Dhyan",
                ),
                StoryWidget(
                  storyimage:
                      "https://i.pinimg.com/originals/d9/0f/8a/d90f8a2c59a9dcc0e12ee8a16c9d16c2.jpg",
                  name: "Arjun",
                ),
                StoryWidget(
                  storyimage:
                      "https://i.pinimg.com/736x/06/c1/25/06c125ca5119c84d8900f9a8cf546d33.jpg",
                  name: "Zara",
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black26,
            thickness: 4,
          ),
          PostWidget(
            userimage:
                "https://i.pinimg.com/736x/06/c1/25/06c125ca5119c84d8900f9a8cf546d33.jpg",
            username: "Zara",
            time: "2h",
            postimage:
                "https://images.pexels.com/photos/610294/pexels-photo-610294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            like: "208",
            comments: "104 Comments",
          ),
          PostWidget(
              userimage:
                  "https://i.pinimg.com/originals/d9/0f/8a/d90f8a2c59a9dcc0e12ee8a16c9d16c2.jpg",
              username: "Arjun",
              time: "4h",
              postimage:
                  "https://atd-blog.s3.us-east-2.amazonaws.com/wp-content/uploads/2022/04/16142811/cool-profile-pictures-for-tiktok-5-678x1024.webp",
              like: "307",
              comments: "210 Comments"),
          PostWidget(
              userimage:
                  "https://th.bing.com/th/id/OIP.jryuUgIHWL-1FVD2ww8oWgHaHa?rs=1&pid=ImgDetMain",
              username: "Mariya",
              time: "1hr",
              postimage:
                  "https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_700/MTk4MDQzMTI5NzY3NTM1ODA2/short-captions-for-profile-pictures.webp",
              like: "102",
              comments: "58 Comments")
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.userimage,
    required this.username,
    required this.time,
    required this.postimage,
    required this.like,
    required this.comments,
  });
  final String userimage;
  final String username;
  final String time;
  final String postimage;
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
          Image.network(
            postimage,
            fit: BoxFit.cover,
          ),
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

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
    this.storyimage,
    this.name,
  });
  final storyimage;
  final name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(storyimage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          bottom: 10,
          left: 40,
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        )
      ],
    );
  }
}
