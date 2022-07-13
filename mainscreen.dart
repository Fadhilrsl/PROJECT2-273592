import 'dart:html';

import 'package:firstapp/QuizScreen.dart';
import 'package:firstapp/learning.dart';
import 'package:firstapp/startgame.dart';
import 'package:firstapp/history.dart';
import 'package:firstapp/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOMESCREEN',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          MaterialButton(
            padding: EdgeInsets.only(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minWidth: 200,
            height: 70,
            child: Text(
              'Start Game',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: _StartGame,
            color: Colors.blue[600],
          ),
          MaterialButton(
            padding: EdgeInsets.only(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minWidth: 200,
            child: Text(
              'Learning',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: _Learning,
            color: Colors.red[600],
            height: 70,
          ),
          MaterialButton(
            padding: EdgeInsets.only(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minWidth: 200,
            child: Text(
              'Quiz ',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: _View,
            color: Colors.green[600],
            height: 70,
          ),
          MaterialButton(
            padding: EdgeInsets.only(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minWidth: 200,
            child: Text(
              'View ',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: _History,
            color: Colors.green[600],
            height: 70,
          ),
          ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text('Exit'))
        ]),
      )),
    );
  }

  void _StartGame() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StartGame()));
  }

  void _Learning() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Learning()));
  }

  void _View() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => View()));
  }

  void _History() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
  }
}
