import 'package:flutter/material.dart';
import 'package:list_chapter/pages/chapter8/pages/birthdays.dart';
import 'package:list_chapter/pages/chapter8/pages/gratitude2.dart';
import 'package:list_chapter/pages/chapter8/pages/reminders.dart';

class Chapter8Bai6 extends StatefulWidget {
  const Chapter8Bai6({super.key});

  @override
  State<Chapter8Bai6> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<Chapter8Bai6> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_tabChanged);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _tabChanged() {
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar'),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: const [
            Birthdays(),
            Gratitude2(),
            Reminders(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black54,
          unselectedLabelColor: Colors.black38,
          tabs: const [
            Tab(
              icon: Icon(Icons.cake),
              text: 'Birthdays',
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied),
              text: 'Gratitude',
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
              text: 'Reminders',
            ),
          ],
        ),
      ),
    );
  }
}
