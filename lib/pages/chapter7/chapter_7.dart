import 'package:flutter/material.dart';
import 'package:list_chapter/constant/app_string.dart';
import 'package:list_chapter/widgets/common_widget.dart';

class Chapter7 extends StatefulWidget {
  const Chapter7({super.key});

  @override
  State<Chapter7> createState() => _Chapter7State();
}

class _Chapter7State extends State<Chapter7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tổng hợp bài tập chapter 7'),
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
        Common.buildElevatedButton(context,AppString.bai1,'/c7_ex1'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai2,'/c7_ex2'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai3,'/c7_ex3'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai4,'/c7_ex4'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.bai5,'/c7_ex5'),
        const Padding(padding: EdgeInsets.all(16.0)),
      ],
    );
  }
}
