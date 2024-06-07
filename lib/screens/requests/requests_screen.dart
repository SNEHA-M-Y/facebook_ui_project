import 'package:flutter/material.dart';

class ScreenRequests extends StatefulWidget {
  const ScreenRequests({super.key});

  @override
  State<ScreenRequests> createState() => _ScreenRequestsState();
}

class _ScreenRequestsState extends State<ScreenRequests> {
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
                  "Friends",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 280,
              ),
              Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Suggetions",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 223, 220, 220),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Your Friends",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 223, 220, 220),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Friend Requests",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "5",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RequestWidget(
            profileimage:
                "https://media.wired.com/photos/598e35994ab8482c0d6946e0/master/w_1920,c_limit/phonepicutres-TA.jpg",
            profilename: "Rahul",
            requestdate: "2d",
          ),
          RequestWidget(
              profileimage:
                  "https://img.freepik.com/free-photo/cute-baby-born_624325-1181.jpg",
              profilename: "June",
              requestdate: "5d"),
          RequestWidget(
              profileimage:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT22LY0nQp2q9ZKf2l5g43cWR_GsHYmhnxaRw&s",
              profilename: "John",
              requestdate: "1w"),
          RequestWidget(
              profileimage:
                  "https://play-lh.googleusercontent.com/a018MxY7Wc8PrvaWGlZHGcAo27NzU__aE29b2NgnWC2hKA9nXe_YsQvj0sJA2kgs4hE=w240-h480-rw",
              profilename: "Yashna",
              requestdate: "2w"),
          RequestWidget(
              profileimage:
                  "https://arynews.tv/wp-content/uploads/2022/11/laiba-khan-696x342.jpg",
              profilename: "Monica",
              requestdate: "3w"),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "People you may know",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          RequestWidget(
            profileimage:
                "https://www.kayak.co.uk/news/wp-content/uploads/sites/5/2017/11/DEST_THAILAND_TAK_PEOPLE_WOMAN_TAKING_PICTURE_PHONE_CAMERA_GettyImages-1366882112-1.jpg",
            profilename: "Catherin",
            addfriend: "Add Friend",
          ),
          RequestWidget(
            profileimage:
                "https://ourculturemag.com/wp-content/uploads/2023/06/wxm465om4j4-696x464.jpg",
            profilename: "Jay",
            addfriend: "Add Friend",
          ),
          RequestWidget(
            profileimage:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCh2JpkwZSB1I7nNT5QERrkYy_SUynSDoaTg&s",
            profilename: "Aadhi",
            addfriend: "Add Friend",
          )
        ],
      ),
    );
  }
}

class RequestWidget extends StatelessWidget {
  const RequestWidget({
    super.key,
    required this.profileimage,
    required this.profilename,
    this.requestdate = "",
    this.addfriend = 'Confirm',
  });
  final String profileimage;
  final String profilename;
  final String requestdate;
  final String addfriend;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.blue[50],
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        profileimage,
                      ),
                      radius: 50,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              profilename,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              requestdate,
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                addfriend,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[700],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Delete",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 215, 230, 246),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
