import 'package:flutter/material.dart';
import 'about.dart';
import 'gratitude1.dart';

class Chapter8Bai1 extends StatefulWidget {
  const Chapter8Bai1({super.key});

  @override
  State<Chapter8Bai1> createState() => _HomeState();
}

class _HomeState extends State<Chapter8Bai1> {

  String _howAreYou = '...';
  void _openPageAbout({required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const About(),
          fullscreenDialog: fullscreenDialog,));
  }
  void _openPageGratitude({required BuildContext context, bool fullscreenDialog = false}) async {
      final String? _gratitudeResponse = await Navigator.push(
        context,
        MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => Gratitude1(radioGroupValue: -1),
         ),
        );
      // _howAreYou = _gratitudeResponse ?? '';
      if(_gratitudeResponse != null) {
        setState(() {
          _howAreYou = _gratitudeResponse;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navigator'),
          actions: <Widget>[
          IconButton(
            onPressed: () => _openPageAbout(
            context: context,
            fullscreenDialog: true,
            ),
            icon: const Icon(Icons.info_outline),
          ),
          ],
        ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Grateful for: $_howAreYou', style: const TextStyle(fontSize: 32.0),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openPageGratitude(context: context,),
        tooltip: 'About',
        child: const Icon(Icons.sentiment_satisfied),
      ),
      );
  }
}
