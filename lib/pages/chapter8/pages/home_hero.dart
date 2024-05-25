import 'package:flutter/material.dart';

import 'fly.dart';

class Chapter8Bai5 extends StatefulWidget {
  const Chapter8Bai5({super.key});

  @override
  State<Chapter8Bai5> createState() => _HomeHeroState();
}

class _HomeHeroState extends State<Chapter8Bai5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: const Hero(
              tag: 'format_paint',
              child: Icon(
                Icons.format_paint,
                color: Colors.lightGreen,
                size: 120.0,
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Fly()));
            },
          ),
        ),
      ),
    );
  }
}
