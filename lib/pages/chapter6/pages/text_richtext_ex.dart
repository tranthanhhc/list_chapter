import 'package:flutter/material.dart';


//Text
class Chapter6Bai5 extends StatefulWidget {
  const Chapter6Bai5({super.key});

  @override
  State<Chapter6Bai5> createState() => _TextAndRichTextExampleState();
}
class _TextAndRichTextExampleState extends State<Chapter6Bai5> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Test Text',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.5,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationThickness: 2,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: EdgeInsets.all(16.0)),
              Text(
                'Đây là một văn bản dài có thể bị cắt bớt nếu nó không vừa với số dòng được chỉ định.',
                maxLines: 1 , // chỉ định số dòng được hiển thị
                overflow: TextOverflow.ellipsis,// dài ra khỏi kích thước sẽ hiển thị ...
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Text(
                'Đây là văn bản dài có thể không vừa với chiều rộng của tiện ích gốc. Nếu softWrap đúng, nó sẽ tự động ngắt sang dòng tiếp theo nếu cần.',
                softWrap: true,// được phép xuống dòng
                strutStyle: StrutStyle( // khoản cách xuống dòng
                  leading: 1.2,
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Text(
                'Đây là một văn bản có kích thước phông chữ được chia tỷ lệ.',
                //textScaleFactor: 1.5, // không khuyến khích vì đã lỗi thời
                textScaler: TextScaler.linear(1.5),// sử dụng scalefactor thông qua textScaler
                strutStyle: StrutStyle( //khoản cách xuống dòng
                  leading: 2.0
                ),
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              // Text(
              //   'Select Me',
              //   selectionColor: Colors.red,// chọn văn bản sẽ đổi màu
              //   locale: Locale('en','US'),// xác định ngôn ngữ hiển thị
              // ),
              // Padding(padding: EdgeInsets.all(16.0)),
              // Text(
              //   'Đây là văn bản quan trọng.',
              //   semanticsLabel: 'Văn bản quan trọng',// gắng nhãn cho văn bản
              // ),
              // Padding(padding: EdgeInsets.all(16.0)),

              Text(
                'مرحب\n بالعالم',
                //textDirection: TextDirection.ltr,// lỗi khi sử dụng sai hướng
                textDirection: TextDirection.rtl, // hướng văn bản
                textWidthBasis: TextWidthBasis.parent,// xác định độ rộng theo widget cha
                textHeightBehavior: TextHeightBehavior(leadingDistribution: TextLeadingDistribution.even),// phân phối khoản cách giữa các dòng văn bản đều
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// RichText
class TextAndRichTextExample2 extends StatefulWidget {
  const TextAndRichTextExample2({super.key});

  @override
  State<TextAndRichTextExample2> createState() => _TextAndRichTextExample2State();
}
class _TextAndRichTextExample2State extends State<TextAndRichTextExample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: 'This is ',
            style: TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'Rich & ',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              TextSpan(
                text: 'Text',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),

              ),
              TextSpan(
                text: 'Nhấn vào đây!',
                style: TextStyle(color: Colors.blue),
                mouseCursor: SystemMouseCursors.click, // đổi kiểu con trỏ
              ),
            ],
            spellOut: true,

          ),
        )
      ),
    );
  }
}


