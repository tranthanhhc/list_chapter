import 'package:flutter/material.dart';
import 'package:list_chapter/pages/chapter5/pages/ch5_widget_tree.dart';
import 'package:list_chapter/pages/chapter5/pages/ch5_widget_tree_performance.dart';
import 'package:list_chapter/pages/chapter6/pages/container_ex.dart';
import 'package:list_chapter/pages/chapter6/pages/padding_ex.dart';
import 'package:list_chapter/pages/chapter6/pages/safe_area_ex.dart';
import 'package:list_chapter/pages/chapter6/pages/scv_ex.dart';
import 'package:list_chapter/pages/chapter6/pages/text_richtext_ex.dart';
import 'package:list_chapter/pages/chapter7/pages/home.dart';
import 'package:list_chapter/pages/chapter7/pages/home_2.dart';
import 'package:list_chapter/pages/chapter7/pages/home_3.dart';
import 'package:list_chapter/pages/chapter7/pages/home_4.dart';
import 'package:list_chapter/pages/chapter7/pages/home_5.dart';
import 'package:list_chapter/pages/chapter8/pages/home.dart';
import 'package:list_chapter/pages/chapter8/pages/home_bottom_app_bar.dart';
import 'package:list_chapter/pages/chapter8/pages/home_bottom_navigator_bar.dart';
import 'package:list_chapter/pages/chapter8/pages/home_drawer_viewer.dart';
import 'package:list_chapter/pages/chapter8/pages/home_hero.dart';
import 'package:list_chapter/pages/chapter8/pages/home_tabbar.dart';
import 'pages/chapter7/chapter_7.dart';
import 'pages/chapter8/chapter_8.dart';
import 'package:list_chapter/pages/home.dart';
import 'pages/chapter4/chapter_4.dart';
import 'pages/chapter5/chapter_5.dart';
import 'pages/chapter6/chapter_6.dart';


// tạo danh sách màn hình
final Map<String , Widget Function(BuildContext)> routes = {
  '/': (context) => const Home(),
  '/four': (context) => const Chapter4(),
  '/five': (context) => const Chapter5(),
  '/six': (context) => const Chapter6(),
  '/seven': (context) => const Chapter7(),
  '/eight': (context) => const Chapter8(),
  // chapter 5
  '/ex1': (context) => const Chapter5Bai1(),
  '/ex2': (context) => const Chapter5Bai2(),
  //chapter 6
  '/c6_ex1':(context) => const Chapter6Bai1(),
  '/c6_ex2':(context) => const Chapter6Bai2(),
  '/c6_ex3':(context) => const Chapter6Bai3(),
  '/c6_ex4':(context) => const Chapter6Bai4(),
  '/c6_ex5':(context) => const Chapter6Bai5(),
  //chapter 7
  '/c7_ex1':(context) => const Chapter7Bai1(),
  '/c7_ex2':(context) => const Chapter7Bai2(),
  '/c7_ex3':(context) => const Chapter7Bai3(),
  '/c7_ex4':(context) => const Chapter7Bai4(),
  '/c7_ex5':(context) => const Chapter7Bai5(),
  //chapter 8
  '/c8_ex1':(context) => const Chapter8Bai1(),
  '/c8_ex2':(context) => const Chapter8Bai2(),
  '/c8_ex3':(context) => const Chapter8Bai3(),
  '/c8_ex4':(context) => const Chapter8Bai4(),
  '/c8_ex5':(context) => const Chapter8Bai5(),
  '/c8_ex6':(context) => const Chapter8Bai6(),
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}



