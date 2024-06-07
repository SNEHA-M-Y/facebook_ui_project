import 'package:flutter/material.dart';

class ScreenNotifications extends StatefulWidget {
  const ScreenNotifications({super.key});

  @override
  State<ScreenNotifications> createState() => _ScreenNotificationsState();
}

class _ScreenNotificationsState extends State<ScreenNotifications> {
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
                    "Notifications",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )),
              Spacer(),
              Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.black,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Earlier",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          NotificationWidget(
            profie:
                "https://ideahead.co.th/wp-content/uploads/2023/03/2021_Facebook_icon.svg.png",
            icon: Icons.shield_outlined,
            notification:
                "We noticed a new login from a device or location you don't usually use.Please  review.",
            duration: "3 d",
          ),
          NotificationWidget(
            profie:
                "https://ideahead.co.th/wp-content/uploads/2023/03/2021_Facebook_icon.svg.png",
            icon: Icons.shield_outlined,
            notification:
                "We noticed a new login from a device or  location you don't usually use.Please review.",
            duration: "3 d",
          ),
          NotificationWidget(
              profie:
                  "https://play-lh.googleusercontent.com/a018MxY7Wc8PrvaWGlZHGcAo27NzU__aE29b2NgnWC2hKA9nXe_YsQvj0sJA2kgs4hE=w240-h480-rw",
              icon: Icons.person_add_alt_1,
              username: "Yashna",
              notification: " Sent you a friend request",
              duration: "5 d"),
          NotificationWidget(
            profie:
                "https://thoughtcatalog.com/wp-content/uploads/2014/04/shutterstock_172218023.jpg",
            icon: Icons.groups,
            username: "Helen Thomas, Aravind K V",
            notification: " and others posted in ",
            message: "Friends Circle",
            data: "\"#Friendship for a lifetime\".....",
            duration: "1 w",
          )
        ],
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.profie,
    required this.icon,
    this.username = "",
    this.data = "",
    this.message = "",
    required this.notification,
    required this.duration,
  });
  final String profie;
  final IconData icon;
  final String notification;
  final String duration;
  final String username;
  final String data;
  final String message;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          enabled: true,
          minLeadingWidth: 50,
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  profie,
                ),
                backgroundColor: Colors.blue[700],
                radius: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 40),
                child: CircleAvatar(
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 13,
                  ),
                  radius: 15,
                  backgroundColor: Colors.blue[900],
                ),
              )
            ],
          ),
          title: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: username,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            TextSpan(
              text: notification,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            TextSpan(
              text: message,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: data,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ])),
          subtitle: Text(
            duration,
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          trailing: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
