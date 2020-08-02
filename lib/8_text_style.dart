import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Style"),
        ),
        body: Center(
            child: Text(
          "Ini Adalah Text",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 30,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.amberAccent,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.wavy),
        )),
      ),
    );
  }
}
