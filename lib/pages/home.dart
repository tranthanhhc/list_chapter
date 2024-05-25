import 'package:flutter/material.dart';
import 'package:list_chapter/constant/app_string.dart';
import 'package:list_chapter/widgets/common_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tổng hợp chapter'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildColumn(context),
        ),
      ),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Common.buildElevatedButton(context,AppString.chapter_4,'/four'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.chapter_5,'/five'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.chapter_6,'/six'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.chapter_7,'/seven'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Common.buildElevatedButton(context,AppString.chapter_8,'/eight'),
        const Padding(padding: EdgeInsets.all(16.0)),

      ],
    );
  }
}
