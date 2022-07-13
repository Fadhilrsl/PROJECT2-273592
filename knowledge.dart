import 'package:flutter/material.dart';

class Knowledge extends StatefulWidget {
  Knowledge() : super();

  final String title = "Knowledge";

  @override
  KnowledgeState createState() => KnowledgeState();
}

class KnowledgeState extends State<Knowledge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: PageView(
        children: [
          Container(
            color: Color.fromARGB(255, 253, 254, 255),
            child: const Center(
              child: Text(
                'Hungarian design teacher and serious puzzler Erno Rubik assembled his first cube puzzle in 1974 and called it the Magic Cube. After a toy agent pitched the puzzle to Ideal Toy & Novelty Company, it renamed the puzzle Rubik’s Cube and began putting it in stores in 1980. Soon puzzlers all over the world wanted to solve the cube. Within two years they bought one hundred million of them, making Rubik’s Cube the title of most popular puzzle in history. Its success fostered hundreds of spin-off products, from best-selling books on how to solve it to patent-infringing look-alikes by other manufacturers.Though media first circulated a story about Rubik designing the cube to help teach students about three-dimensional objects, Rubik himself later acknowledged that he purposefully set out to design a puzzle based on geometry. The 27 tiny cubes called “cubies” produced a truly challenging puzzle. Each carried one of six colors, and when assembled they formed a square. ',
                style: TextStyle(
                    color: Color.fromARGB(255, 4, 4, 4), fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
