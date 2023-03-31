import 'package:flutter/material.dart';
import 'package:insta/WhatsApp/utils/chatItems.dart';
import 'package:insta/WhatsApp/utils/names.dart';

import '../hotel_booking/hotel_home_screen.dart';
import 'Chats/ChatUi.dart';

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({Key key}) : super(key: key);

  @override
  State<WhatsAppUI> createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HotelHomeScreen()));
          },
          backgroundColor: Color(0xff00cc3f),
          child: Icon(Icons.chat),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff075e55),
          centerTitle: false,
          title: Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHAT",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
          actions: [
            Icon(Icons.search, size: 30.0),
            const SizedBox(width: 16.0),
            Icon(Icons.more_vert, size: 30.0),
            const SizedBox(width: 16.0),
          ],
        ),
        body: ListView(
          itemExtent: 80.0,
          children: chatItems,
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String name;
  final String image;
  final String text;
  final DateTime time;

  const ChatItem({
    Key key,
    @required this.name,
    @required this.image,
    @required this.text,
    @required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => whatsAppChatUI()));
            },
            leading: SizedBox(
              height: 80.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            title: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(text),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("${time.hour}:${time.minute}"),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          height: 1,
          width: MediaQuery.of(context).size.width - 85.0,
        ),
      ],
    );
  }
}
