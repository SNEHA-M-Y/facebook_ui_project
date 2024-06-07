import 'package:facebook_ui_project/screens/home/home_screen.dart';
import 'package:facebook_ui_project/screens/menu/menu_screen.dart';
import 'package:facebook_ui_project/screens/notifications/notifications_screen.dart';
import 'package:facebook_ui_project/screens/requests/requests_screen.dart';
import 'package:facebook_ui_project/screens/videos/videos_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700]),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                color: Colors.black,
              ),
            )
          ],
          bottom: TabBar(
            labelColor: Colors.blue[700],
            unselectedLabelColor: Colors.black38,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.people_outline,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video_rounded,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_none,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          ScreenHome(),
          ScreenRequests(),
          ScreenVideos(),
          ScreenNotifications(),
          ScreenMenu(),
        ]),
      ),
    );
  }
}
