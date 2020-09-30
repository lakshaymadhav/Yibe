import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Screens/Homepage.dart';
import 'dart:async';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => new HomePage()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isfinished = false;

  startTime() async {
    var _duration = new Duration(seconds: 4);

    return new Timer(_duration, navigationPage);
  }

  SvgPicture pic1 = SvgPicture.asset("assets/yibewhite.svg");
  SvgPicture pic2 = SvgPicture.asset("assets/yibeorange.svg");
  Color bg2 = Colors.white;
  Color bg1 = Color(0xFFFD8F6E);

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/homepage');
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isfinished = !isfinished;
      });
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isfinished ? bg2 : bg1,
      body: Center(
        child: isfinished ? pic1 : pic2,
      ),
    );
  }
}
