import 'package:flutter/material.dart';
import 'package:list_chapter/constant/app_string.dart';
import 'package:list_chapter/widgets/common_widget.dart';

class Chapter6 extends StatefulWidget {
  const Chapter6({super.key});

  @override
  State<Chapter6> createState() => _Chapter6State();
}

class _Chapter6State extends State<Chapter6> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Tổng hợp bài tập chapter 6'),
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
        Common.buildElevatedButton(context,AppString.bai1,'/c6_ex1'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai2,'/c6_ex2'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai3,'/c6_ex3'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai4,'/c6_ex4'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai5,'/c6_ex5'),
        const Padding(padding: EdgeInsets.all(16.0)),
      ],
    );
  }
}
