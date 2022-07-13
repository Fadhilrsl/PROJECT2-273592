import 'package:firstapp/QuizScreen.dart';
import 'package:flutter/material.dart';



class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QUIZ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QuizScreen());
  }
}
