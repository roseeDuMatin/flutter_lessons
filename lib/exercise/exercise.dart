import 'package:flutter/material.dart';

/// Learn how to run use a Scaffold widget
/// In this lesson we are going to speak about:
/// * Scaffold
/// * BottomNavigationBar
/// * FloatingActionButton
/// * AppBAr

///
///

int myFunction() {
  return 42;
}

int myFunction2() => 24;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

void _toto() {
  print("ok");
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          "Ma super application",
          style: Theme.of(context).textTheme.subtitle,
        ),

        // leading : widget à gauche de la barre
        leading: Icon(
          Icons.local_airport,
          color: Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toto,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home", style: Theme.of(context).textTheme.subtitle),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            title:
                Text("Favorite", style: Theme.of(context).textTheme.subtitle),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Salut",
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
