import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Chapter6Bai4 extends StatefulWidget {
  const Chapter6Bai4({super.key});

  @override
  State<Chapter6Bai4> createState() => _ScvExampleState();
}

class _ScvExampleState extends State<Chapter6Bai4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SCV Example'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          restorationId: 'unique_scroll_id',
          dragStartBehavior: DragStartBehavior.start, // bắt đầu kéo khi di trên widget này
          scrollDirection: Axis.horizontal, // Hướng cuộn, mặc định là dọc
          primary: false, // đặt widget này thành widget chính
          child: Center(
            child: Row(
              children: <Widget>[
                const Text('Item 1'),
                const Text('Item 2'),
                const Text('Item 3'),
                const Text('Item 4'),
                const Text('Item 5'),
                const Text('Item 6'),
                const Text('Item 7'),
                const Text('Item 8'),
                const Text('Item 9'),
                const Text('Item 10'),
                const Padding(padding: EdgeInsets.all(10.0)),
                Container(
                  height:1000 ,
                  child: const Text('Đây là widget Container'),
                ),
                // Thêm các widget khác nếu cần
              ],
            ),
          ),
        ),

      ),
    );
  }
}

//controller
class ScvExample2 extends StatefulWidget {
  const ScvExample2({super.key});

  @override
  State<ScvExample2> createState() => _ScvExample2State();
}
class _ScvExample2State extends State<ScvExample2> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _controllerT = TextEditingController();

  @override
  void dispose() {
    _scrollController.dispose(); // Gọi dispose để giải phóng bộ nhớ khi không cần thiết
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0, // Vị trí cuộn đến (đầu trang)
      duration: const Duration(seconds: 1), // Thời gian cuộn
      curve: Curves.easeInOut, // Hình dạng của đường cong cuộn
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Controller Example'),
      ),
      body: SingleChildScrollView(
        controller: _scrollController, // Sử dụng ScrollController
        //scrollDirection: Axis.horizontal, // cuộn ngang
        //reverse: false,// đổi hướng cuộn
        //keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // ẩn bàn phím khi ng dùng kéo
        child: Column(
          children: <Widget>[
            Container(
              height: 1000, // Chiều cao lớn để tạo nội dung cuộn
              //width:1000, // tạo chiều rộng lớn để cuộn ngang
              color: Colors.blue,
            ),
            ElevatedButton(
              onPressed: _scrollToTop,
              child: const Text('Scroll To Top'),
            ),
            TextFormField(
              controller: _controllerT,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: 'Mời nhập'),
            ),
            TextField(

            ),
            Form(
              child: Padding(
                padding: EdgeInsets.all(16.0),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
