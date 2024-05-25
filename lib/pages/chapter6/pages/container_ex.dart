import 'package:flutter/material.dart';

// định vị kích thước
class Chapter6Bai1 extends StatefulWidget {
  const Chapter6Bai1({super.key});

  @override
  State<Chapter6Bai1> createState() => _ContainerExampleState();
}
class _ContainerExampleState extends State<Chapter6Bai1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Container test'),
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 200, // Chiều rộng 200 pixels
                    height: 200, // Chiều cao 200 pixels
                    color: Colors.blue, // Màu nền xanh
                    padding: const EdgeInsets.all(20), // Khoảng đệm 20 pixels trong nội dung
                    margin: const EdgeInsets.all(10), // Khoảng ngoại vi 10 pixels bên ngoài
                    alignment:Alignment.center, // Căn chỉnh nội dung vào giữa
                    transform: Matrix4.rotationY(0.2), // xoay 1 góc 0.2 radian
                    //transformAlignment: Alignment(0.2 , 0.3),
                  child: const Text('Đây là ví dụ '),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// tinh chỉnh kiểu dáng
class ContainerExample2 extends StatefulWidget {
  const ContainerExample2({super.key});
  @override
  State<ContainerExample2> createState() => _ContainerExample2State();
}
class _ContainerExample2State extends State<ContainerExample2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Container test'),
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(16.0)),
                  Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(50),
                    margin: const EdgeInsets.all(50),
                    decoration: BoxDecoration( // tạo viền cho container
                      border: Border.all( // set cho tất cả các cạnh
                        color: Colors.black,
                        width: 5,
                      ),
                    ),
                    child: const Text('Nội dung có đường viền'),
                  ),
                  const Padding(padding: EdgeInsets.all(16.0)),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius:BorderRadius.circular(10),
                    ),
                    foregroundDecoration: BoxDecoration( // phủ lên trước  một lớp
                      color: Colors.red.withOpacity(0.5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Thiết lập một màu đỏ với độ mờ 50% cho phần trước của Container',
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(16.0)),
                  Container(
                    clipBehavior: Clip.antiAlias, // cắt khhi tràn nội dung
                    constraints: const BoxConstraints(minWidth: 100,maxWidth:300,minHeight: 100,maxHeight: 300),// rằng buộc kích thước
                    alignment: Alignment.center,// căn chỉnh nội dung bên trong văn bản
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child:  const Text('Đây là nút 1',textAlign: TextAlign.center,),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child:  const Text('Đây là nút 2',textAlign: TextAlign.center,),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child:  const Text('Đây là nút 3',textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

