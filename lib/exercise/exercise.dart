import 'package:flutter/material.dart';

/// Learn how to run the App widget
/// In this lesson we are going to speak about:
/// * runApp method
/// * StatelessWidget
/// * Container
/// * MaterialApp
/// * InheritedWidget
/// * Theme

class User {
  // final => immutable
  String name;

  User(this.name);
// User({this.name}) => nommer le champ/ champ optionnel => User(name : "toto")
// User({ @required this.name}) => nommer le champ et champ obligatoire (mais compile quand meme
// User({this.name == "toto"}) => optionnel + valeur par défaut
// On peut mélanger les champs optionnels, nommés ou non

}

final User toto = User('toto');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Représente graphiquement le widget
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      home: Container(
        color: Colors.pink,
        child: Center(
          child: MagicText(
            text: "Salut"
          ),
        ),
      ),
    );
  }
}

class MagicText extends StatelessWidget {
  final String text; // const à partir du moment où on lui donne une valeur

  const MagicText({
    Key key,
    this.text = "Hello",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.title,
    );
  }
}
