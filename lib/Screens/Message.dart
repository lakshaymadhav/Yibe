import 'package:Yibe_app/Screens/Collegesec.dart';
import 'package:Yibe_app/Screens/Commonsec.dart';
import 'package:Yibe_app/Screens/Homepage.dart';
import 'package:Yibe_app/Screens/Notifications.dart';
import 'package:Yibe_app/Screens/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  Color _iconMsg = Color(0xFFFD8F6E);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (dis) {
        if (dis.delta.dx > 0) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: SvgPicture.asset("assets/backward.svg"),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            "Messages",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              "Messages",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
