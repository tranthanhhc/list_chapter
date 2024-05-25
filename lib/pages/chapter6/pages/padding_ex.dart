import 'package:flutter/material.dart';

class Chapter6Bai2 extends StatefulWidget {
  const Chapter6Bai2({super.key});

  @override
  State<Chapter6Bai2> createState() => _PaddingExampleState();
}

class _PaddingExampleState extends State<Chapter6Bai2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Example '),
        foregroundColor: Colors.redAccent,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
              alignment: Alignment.center, // Vị trí căn chỉnh của nội dung bên trong Container
              color: Colors.blue, // Màu nền của Container
              width: 200, // Độ rộng của Container
              height: 100, // Chiều cao của Container
              margin: const EdgeInsets.all(20.0), // Khoảng cách giữa Container và các phần tử xung quanh
              padding: const EdgeInsets.all(10.0), // Khoảng đệm bên trong Container
              child: const Text('ahihi'), // Widget con bên trong Container
          ),
        ),
      ),
    );
  }
}
