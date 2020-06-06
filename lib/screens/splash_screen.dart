import 'dart:async';

import 'package:expanrr/screens/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
        ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => Home()
        ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('assets/expanrr.png'),
        )
      ),
    );
  }
}
