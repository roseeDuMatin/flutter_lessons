import 'package:flutter/material.dart';

/// Learn how to run use a Scaffold widget
/// In this lesson we are going to speak about:
/// * Scaffold
/// * BottomNavigationBar
/// * FloatingActionButton
/// * AppBAr

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Hello",
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}