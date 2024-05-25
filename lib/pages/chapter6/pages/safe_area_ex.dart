import 'package:flutter/material.dart';

// child: (Scaffold,Padding, Column,Row, Center….),
class Chapter6Bai3 extends StatefulWidget {
  const Chapter6Bai3({super.key});

  @override
  State<Chapter6Bai3> createState() => _SafeAreaExampleState();
}

class _SafeAreaExampleState extends State<Chapter6Bai3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Safe Area Example'),
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.white,
            actions: const <Widget>[
              Icon(
                Icons.photo_camera,
                size: 75.0,
                color: Colors.white70,
              ),

              Icon(
                Icons.photo_camera,
                size: 75.0,
                color: Colors.white70,
              ),
            ],
          ),
          body: const Center(
            child: Text('Đây là nội dung '),
          ),
        ),
      );
  }
}

// minimum
class SafeAreaExample2 extends StatefulWidget {
  const SafeAreaExample2({super.key});

  @override
  State<SafeAreaExample2> createState() => _SafeAreaExample2State();
}
class _SafeAreaExample2State extends State<SafeAreaExample2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // khoản cách tối thiểu ko bị cắt bỏ ở cạnh an toàn với trục dọc là 16 đơn vị và ngang là 20 đơn vị
      minimum: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: Container(
        color: Colors.blue,
        height: 200,
        width: double.infinity,
        child: const Center(
          child: Text(
            'SafeArea Content',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

//left, top, right, bottom :true,
class SafeAreaExample3 extends StatefulWidget {
  const SafeAreaExample3({super.key});

  @override
  State<SafeAreaExample3> createState() => _SafeAreaExample3State();
}
class _SafeAreaExample3State extends State<SafeAreaExample3> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      left: false,
      top: true,
      right: true,
      bottom: false,
      child: Text('Nội dung này không đệm về bên trái và bên dưới'),
    );
  }
}

//maintainBottomViewPadding: true/false , SafeArea ở Đầu
class SafeAreaExample4 extends StatefulWidget {
  const SafeAreaExample4({super.key});

  @override
  State<SafeAreaExample4> createState() => _SafeAreaExample4State();
}
class _SafeAreaExample4State extends State<SafeAreaExample4> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        maintainBottomViewPadding: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Test Maintain'),
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _controller,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Enter text here'),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

