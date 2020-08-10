import 'package:flutter/material.dart';
import 'package:courseapp/screens/home.dart';

void main() => runApp(CourseApp());

class CourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Courses',
      home: HomeScreen(),
    );
  }
}
