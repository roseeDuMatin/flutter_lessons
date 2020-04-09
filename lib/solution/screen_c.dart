import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  static const String routeName = "routeC";

  final int identifier;

  const ScreenC({
    Key key,
    this.identifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Screen C"),
            Text("Identifier = ${identifier ?? 'undefined'}"),
            RaisedButton(
              child: Text("Go back"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}