
import 'package:flutter/material.dart';
import 'package:list_chapter/pages/chapter8/pages/birthdays.dart';
import 'package:list_chapter/pages/chapter8/pages/reminders.dart';
import 'gratitude2.dart';
class Chapter8Bai3 extends StatefulWidget {
  const Chapter8Bai3({super.key});

  @override
  State<Chapter8Bai3> createState() => _HomeBottomNBState();
}

class _HomeBottomNBState extends State<Chapter8Bai3> {
  int _currentIndex = 0;
  final List _listPages = [];
  Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _listPages..add(Birthdays())..add(Gratitude2())..add(Reminders());
    _currentPage = Birthdays();
  }
  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Bar'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Birthdays',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
              label: 'Gratitude',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Reminders',
          ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}
