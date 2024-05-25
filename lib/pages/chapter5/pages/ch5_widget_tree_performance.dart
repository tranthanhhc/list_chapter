import 'package:flutter/material.dart';

class Chapter5Bai2 extends StatefulWidget {
  const Chapter5Bai2({super.key});

  @override
  State<Chapter5Bai2> createState() => _Chapter5Bai2State();
}

class _Chapter5Bai2State extends State<Chapter5Bai2> {
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Bài tập 2 '),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                RowWidget(),
                Padding(padding: EdgeInsets.all(16.0),),
                RowAndColumnWidget(),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
class RowAndColumnWidget extends StatelessWidget {
  const RowAndColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60.0,
              width: 60.0,
            ),
            const Padding(padding: EdgeInsets.all(16.0),),
            Container(
              color: Colors.amber,
              height: 40.0,
              width: 40.0,
            ),
            const Padding(padding: EdgeInsets.all(16.0),),
            Container(
              color: Colors.brown,
              height: 20.0,
              width: 20.0,
            ),
            const Divider(),
            const StackWidget(),
            const Divider(),
            const Text('End of the Line'),
          ],
        ),
      ],
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100.0,
          child: Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.amber,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
        const Padding(padding: EdgeInsets.all(16.0),),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
        ),
        const Padding(padding: EdgeInsets.all(16.0),),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}