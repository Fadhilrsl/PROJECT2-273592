import 'package:firstapp/knowledge.dart';
import 'package:firstapp/tutorial.dart';
import 'package:firstapp/video.dart';
import 'package:flutter/material.dart';

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 50,
            width: 200,
            child: MaterialButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(left: 50, right: 50),
                onPressed: _Tutorial,
                child: Text(
                  'Tutorial',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          Container(
            height: 50,
            width: 200,
            child: MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(left: 50, right: 50),
                onPressed: _Knowledge,
                child: Text(
                  'Knowledge',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
        ],
      )),
    );
  }

  void _Video() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Video()));
  }

  void _Tutorial() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Tutorial()));
  }

  void _Knowledge() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Knowledge()));
  }
}
