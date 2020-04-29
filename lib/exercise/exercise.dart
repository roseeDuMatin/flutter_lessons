import 'package:flutter/material.dart';

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




class Home extends StatefulWidget {
  // Mettre les immutables dans stateful
  final List<Widget> _screens = [
    ScreenA(),
    ScreenB(),
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  // Getter : fonction à laqulele on fait appel comme un champ
  List<Widget> get screens => widget._screens;

  void _changedIndex(int newIndex){
    if(_currentIndex != newIndex){
      setState((){
        _currentIndex = newIndex;
      });
    }
    print("Clicked index = $_currentIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_currentIndex],
      appBar: AppBar(
        leading: Icon(Icons.airplanemode_active),
        title: Text("My Title"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("ok");
  },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // index sélectionné dans la liste des onglets
        onTap: _changedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorites"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("today"),
          ),
        ],
      ),
    );
  }
}


class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child : Text("Screen A"),
      )
    );
  }
}

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: Text("Screen B"),
      )
    );
  }
}
