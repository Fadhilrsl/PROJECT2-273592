import 'dart:async';

import 'package:firstapp/mainscreen.dart';
import 'package:flutter/material.dart';

class SplashHome extends StatefulWidget {
  const SplashHome({Key? key}) : super(key: key);

  @override
  State<SplashHome> createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MainScreen(),
              // splashTransition:SplashTransition.fadeTransition,
              // backgroundColor : Colors.blue
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/clipart918134.png', scale: 2)],
        ),
      ),
    );
  }
}
