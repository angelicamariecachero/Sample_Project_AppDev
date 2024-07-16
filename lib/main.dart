import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(TaskMasterApp());
}

class TaskMasterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskMaster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
