import 'package:flutter/material.dart';
import 'package:list_chapter/constant/app_string.dart';
import 'package:list_chapter/pages/chapter5/pages/ch5_widget_tree.dart';
import 'package:list_chapter/pages/chapter5/pages/ch5_widget_tree_performance.dart';
import 'package:list_chapter/widgets/common_widget.dart';

// final Map<String , Widget Function(BuildContext)> routes = {
//   '/ex1': (context) => const Chapter5Bai1(),
//   '/ex2': (context) => const Chapter5Bai2(),
// };

class Chapter5 extends StatefulWidget {
  const Chapter5({super.key});

  @override
  State<Chapter5> createState() => _Chapter5State();
}

class _Chapter5State extends State<Chapter5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tổng hợp bài tập chapter 5'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: buildColumn(context),
        ),
      ),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Common.buildElevatedButton(context,AppString.bai1,'/ex1'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai2,'/ex2'),
        const Padding(padding: EdgeInsets.all(16.0)),
      ],
    );
  }
}
