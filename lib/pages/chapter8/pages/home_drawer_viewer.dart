import 'package:flutter/material.dart';
import 'package:list_chapter/pages/chapter8/widgets/left_drawer.dart';
import 'package:list_chapter/pages/chapter8/widgets/right_drawer.dart';

class Chapter8Bai4 extends StatefulWidget {
  const Chapter8Bai4({super.key});

  @override
  State<Chapter8Bai4> createState() => _HomeDVState();
}

class _HomeDVState extends State<Chapter8Bai4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Drawer'),
        ),
      drawer: const LeftDrawerWidget(),
      endDrawer: const RightDrawerWidget(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
