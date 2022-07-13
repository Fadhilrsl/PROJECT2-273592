import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  Video() : super();

  final String title = "Video";

  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("View"),
    ));
  }
}
