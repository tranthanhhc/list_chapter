import 'package:flutter/material.dart';

class Chapter8Bai2 extends StatefulWidget {
  const Chapter8Bai2({super.key});

  @override
  State<Chapter8Bai2> createState() => _HomeBottomABState();
}

class _HomeBottomABState extends State<Chapter8Bai2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom App Bar'),
      ),
      body: SafeArea(
        child: Container(

        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade200,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.access_alarm),
              color: Colors.white,
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              color: Colors.white,
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.flight),
              color: Colors.white,
              onPressed: (){},
            ),
            const Divider(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add,),
      ),
    );
  }
}
