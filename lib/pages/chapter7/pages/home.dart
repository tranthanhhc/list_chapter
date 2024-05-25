import 'package:flutter/material.dart';
import 'package:list_chapter/pages/chapter7/widgets/animated_balloon.dart';

class Chapter7Bai1 extends StatefulWidget {
  const Chapter7Bai1({super.key});

  @override
  State<Chapter7Bai1> createState() => _Chapter7Bai1State();
}

class _Chapter7Bai1State extends State<Chapter7Bai1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bài tập 1 "),
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.white,
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  AnimatedBalloonWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
