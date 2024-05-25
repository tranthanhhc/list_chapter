import 'package:flutter/material.dart';
import 'package:list_chapter/pages/chapter4/pages/home_chapter4.dart';

class Chapter4 extends StatefulWidget {
  const Chapter4({super.key});

  @override
  State<Chapter4> createState() => _Chapter4State();
}

class _Chapter4State extends State<Chapter4> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HomeChapter4(),
            ],
          ),
        ),
    );
  }
}
