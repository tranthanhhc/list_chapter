import 'package:flutter/material.dart';
import 'package:list_chapter/constant/app_string.dart';
import 'package:list_chapter/widgets/common_widget.dart';

class Chapter8 extends StatefulWidget {
  const Chapter8({super.key});

  @override
  State<Chapter8> createState() => _Chapter8State();
}

class _Chapter8State extends State<Chapter8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tổng hợp bài tập chapter 8'),
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
        Common.buildElevatedButton(context,AppString.bai1,'/c8_ex1'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai2,'/c8_ex2'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai3,'/c8_ex3'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai4,'/c8_ex4'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai5,'/c8_ex5'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai6,'/c8_ex5'),
        const Padding(padding: EdgeInsets.all(16.0)),
      ],
    );
  }
}
