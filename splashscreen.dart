import 'dart:async';

import 'package:firstapp/loginscreen.dart';
import 'package:firstapp/mainscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
