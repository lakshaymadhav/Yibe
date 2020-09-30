import 'package:Yibe_app/Screens/Collegesec.dart';
import 'package:Yibe_app/Screens/Commonsec.dart';
import 'package:Yibe_app/Screens/Homepage.dart';
import 'package:Yibe_app/Screens/Message.dart';
import 'package:Yibe_app/Screens/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  Color _iconNotify = Color(0xFFFD8F6E);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (dis) {
        if (dis.delta.dx < 0) {
          //User swiped from right to left
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            "Notifications",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
          actions: [
            IconButton(
                icon: SvgPicture.asset("assets/forward.svg"),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
        body: Container(
          child: Center(
            child: Text(
              "Notifications",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
