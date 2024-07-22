import 'package:flutter/material.dart';
import 'homepage_screen.dart';
import 'create_task_screen.dart';
import 'notifications_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomepageScreen(),
    CreateTaskScreen(),
    NotificationsScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TaskMaster'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            label: 'Homepage',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.bar_chart),
            label: 'CreateTask',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
