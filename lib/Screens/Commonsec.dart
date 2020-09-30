import 'package:Yibe_app/Screens/Addpage.dart';
import 'package:Yibe_app/Screens/Collegesec.dart';
import 'package:Yibe_app/Screens/Homepage.dart';
import 'package:Yibe_app/Screens/Message.dart';
import 'package:Yibe_app/Screens/Notifications.dart';
import 'package:Yibe_app/Screens/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonSection extends StatefulWidget {
  @override
  _CommonSectionState createState() => _CommonSectionState();
}

class _CommonSectionState extends State<CommonSection> {
  Color _iconLang = Color(0xFFFD8F6E);

  Widget addbottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: [
                new ListTile(
                  leading: new Icon(Icons.home),
                  title: Text("option 1"),
                ),
                new ListTile(
                  leading: new Icon(Icons.home),
                  title: Text("option 2"),
                ),
                new ListTile(
                  leading: new Icon(Icons.home),
                  title: Text("option 2"),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/search.svg",
              ),
              onPressed: () {}),
        ],
        centerTitle: true,
        title: IconButton(
            icon: SvgPicture.asset("assets/Logo.svg"), onPressed: null),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Commonsection",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {
          addbottomsheet(context);
        },
        mini: mounted,
        backgroundColor: Color(0xFFFD8F6E),
        child: new Icon(Icons.add),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/home-24px-1.svg",
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),
            ),
            Expanded(
              child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/account_balance_24px.svg",
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CollegeSection()));
                  }),
            ),
            Expanded(
              child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/language_24px.svg",
                    color: _iconLang,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommonSection()));
                  }),
            ),
            Expanded(
              child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/account_circle_24px.svg",
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
