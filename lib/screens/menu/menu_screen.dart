import 'package:flutter/material.dart';

class ScreenMenu extends StatefulWidget {
  const ScreenMenu({super.key});

  @override
  State<ScreenMenu> createState() => _ScreenMenuState();
}

class _ScreenMenuState extends State<ScreenMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 246, 251),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "Menu",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 240,
                ),
                Icon(
                  Icons.settings_rounded,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.search_rounded,
                  size: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 0.5,
                        spreadRadius: 01,
                        offset: Offset(0.5, 0.5)),
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg",
                      ),
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Selena George",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.swap_horizontal_circle_sharp,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Your Shortcuts",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 210, 223, 244),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 40),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.flag,
                      color: Colors.red,
                    ),
                    radius: 18,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 5),
            child: Text(
              "_selena_",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 350,
            width: double.infinity,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 80,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              children: [
                MenuWidgets(
                  menuimages:
                      "https://cdn-icons-png.flaticon.com/512/2595/2595175.png",
                  menuitem: "Memories",
                ),
                MenuWidgets(
                  menuimages:
                      "https://cdn-icons-png.flaticon.com/512/2731/2731143.png",
                  menuitem: "Saved",
                ),
                MenuWidgets(
                  menuimages:
                      "https://cdn-icons-png.flaticon.com/512/12965/12965788.png",
                  menuitem: "Groups",
                ),
                MenuWidgets(
                  menuimages:
                      "https://img.freepik.com/premium-vector/video-icon-png_564384-149.jpg",
                  menuitem: "Video",
                ),
                MenuWidgets(
                  menuimages:
                      "https://cdn-icons-png.flaticon.com/512/2422/2422258.png",
                  menuitem: "Marketplace",
                ),
                MenuWidgets(
                  menuimages:
                      "https://www.pikpng.com/pngl/b/333-3339750_png-file-svg-friend-request-icon-png-clipart.png",
                  menuitem: "Friends",
                ),
                MenuWidgets(
                  menuimages:
                      "https://cdn-icons-png.flaticon.com/512/906/906338.png",
                  menuitem: "Feeds",
                ),
                MenuWidgets(
                  menuimages:
                      "https://cdn-icons-png.flaticon.com/512/1458/1458512.png",
                  menuitem: "Events",
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "See more",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.black12,
            ),
            title: Text(
              "Help & Support",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black12,
            ),
          ),
          Divider(
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.black12,
            ),
            title: Text(
              "Settings & Privacy",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black12,
            ),
          ),
          Divider(
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(
              Icons.grid_on,
              color: Colors.black12,
            ),
            title: Text(
              "Also from Meta",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuWidgets extends StatelessWidget {
  const MenuWidgets({
    super.key,
    this.menuimages,
    this.menuitem,
  });

  final menuimages;
  final menuitem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.5,
            spreadRadius: 01,
            offset: Offset(0.5, 0.5),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            menuimages,
            height: 30,
          ),
          Text(
            menuitem,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
