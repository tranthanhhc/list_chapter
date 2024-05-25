import 'package:flutter/material.dart';
import 'package:list_chapter/pages/chapter7/widgets/animated_opacity.dart';

class Chapter7Bai5 extends StatefulWidget {
  const Chapter7Bai5({super.key});

  @override
  State<Chapter7Bai5> createState() => _Chapter7Bai2State();
}

class _Chapter7Bai2State extends State<Chapter7Bai5> {
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
                  AnimatedOpacityWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
