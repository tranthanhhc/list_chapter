import 'package:flutter/material.dart';

// void main() {
//   runApp(GlobalKeyTest());
// }

// Global key
class GlobalKeyTest extends StatelessWidget {
  GlobalKeyTest({super.key});
  final GlobalKey<_GlobalTestState> _textGlobalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          title: Text('test global key'),
      ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              GlobalTest(key: _textGlobalKey,),
              ElevatedButton(
                onPressed: () {
                  _textGlobalKey.currentState?.changeText('New Test');
                  },
                child: Text('Change Text')),
            ],
          ),
        ),
      ),
    );
  }
}
class GlobalTest extends StatefulWidget {
  const GlobalTest({super.key});

  @override
  State<GlobalTest> createState() => _GlobalTestState();
}
class _GlobalTestState extends State<GlobalTest> {
  String _text = 'Hello World';
  void changeText(String newText) {
    setState(() {
      _text = newText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Text(_text);
  }
}

//Local key
class LocalKeyTest extends StatelessWidget {
  LocalKeyTest({super.key});
  final ValueKey<String> _textLocalKey = ValueKey('textKey');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test global key'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LocalKeyTest(key: _textLocalKey,),
              ElevatedButton(
                  onPressed: () {
                    final _LocalTestState? textState = context.findAncestorStateOfType<_LocalTestState>();
                  },
                  child: Text('Change Text')),
            ],
          ),
        ),
      ),
    );
  }
}
class LocalTest extends StatefulWidget {
  const LocalTest({super.key});

  @override
  State<LocalTest> createState() => _LocalTestState();
}

class _LocalTestState extends State<LocalTest> {
  String _newText = 'New World';
  void  changeText(String newText) {
    setState(() {
      _newText = newText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

