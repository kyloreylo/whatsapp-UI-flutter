import 'package:flutter/material.dart';
import 'package:wpui/calls.dart';
import 'package:wpui/chat_item.dart';
import 'package:wpui/contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List profilUrl = [
    "https://cdn.armut.com/UserPics/tr:w-325,h-325/9c2c7e5c-1ff5-404e-88d4-cbc932602d9b.jpeg",
    "https://i.pinimg.com/originals/73/16/f5/7316f550de9ca0045e3d8d98a5bb5e44.png",
    "https://64.media.tumblr.com/tumblr_mdrfhtlrqe1rz2ibto1_1280.jpg",
    "https://sabosoftware.com/upload/Original/Logo/e1d0e4182ad2c3b904bc8e8140eb40be.png",
    "https://sabosoftware.com/upload/Original/Logo/e1d0e4182ad2c3b904bc8e8140eb40be.png"
  ];
  List<Widget> kisiler() {
    return [
      ChatItem(profilUrl[0], "Hüseyin Ablay", "Nasılsın?", 179, 159, "4"),
      Divider(
        thickness: 0.2,
        color: Colors.grey,
        height: 1,
      ),
      ChatItem(
          profilUrl[1], "Elliot Alderson", "Tamam kardeşim.", 123, 157, "2"),
      Divider(
        thickness: 0.2,
        color: Colors.grey,
        height: 1,
      ),
      ChatItem(profilUrl[2], "Don Draper", "Nasılsın? ", 175, 180, "16"),
      Divider(
        thickness: 0.2,
        color: Colors.grey,
        height: 1,
      ),
      ChatItem(profilUrl[3], "Sabo Software", "İbrahim Tunç : Tamam kardeşim.",
          32, 155, "9"),
      Divider(
        thickness: 0.2,
        color: Colors.grey,
        height: 1,
      )
    ];
  }

  List<Widget> aramalar() {
    return [
      CallsItem(
        profilUrl[0],
        "Mads Mikkelsen",
        Icon(
          Icons.call_received_outlined,
          color: Colors.red,
        ),
        129,
        Icon(
          Icons.call_outlined,
          color: Colors.green,
          size: 33,
        ),
      ),
      CallsItem(
        profilUrl[1],
        "Elliot Alderson",
        Icon(
          Icons.call_made_outlined,
          color: Colors.green,
        ),
        142,
        Icon(
          Icons.videocam_outlined,
          color: Colors.green,
          size: 33,
        ),
      ),
      CallsItem(
        profilUrl[2],
        "Don Draper",
        Icon(
          Icons.phone_callback_outlined,
          color: Colors.red,
        ),
        165,
        Icon(
          Icons.call_outlined,
          color: Colors.green,
          size: 33,
        ),
      ),
      CallsItem(
        profilUrl[3],
        "Sabo Software",
        Icon(
          Icons.call_made_outlined,
          color: Colors.green,
        ),
        140,
        Icon(
          Icons.videocam_outlined,
          color: Colors.green,
          size: 33,
        ),
      ),
    ];
  }

  List<Widget> contacts() {
    return [
      Contacts(profilUrl[0], "Hüseyin Ablay",
          "It is pointless to resist, my son.", 160),
      Contacts(profilUrl[1], "Elliot Alderson", "fuck society.", 160),
      Contacts(
          profilUrl[2], "Don Draper", "Make it simple but significant.", 183),
      Contacts(profilUrl[3], "Sabo Software", "Devamkee.", 158),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var tabcontroller;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: tabcontroller,
            tabs: <Widget>[
              Tab(
                child: Row(
                  children: [
                    Text(
                      "CHATS",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Text(
                      "CALLS",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Text(
                      "CONTACTS",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(0, 97, 86, 1),
          title: Text("WhatsApp"),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.photo_camera), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert_outlined), onPressed: () {}),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            ListView(
              children: [
                ...kisiler(),
                ...kisiler(),
                ...kisiler(),
              ],
            ),
            ListView(
              children: [
                ...aramalar(),
                ...aramalar(),
              ],
            ),
            ListView(
              children: [
                ...contacts(),
                ...contacts(),
                ...contacts(),
                ...contacts(),
              ],
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(0, 97, 86, 1),
          child: Icon(
            Icons.comment_outlined,
          ),
          onPressed: () => null,
        ),
      ),
    );
  }
}
