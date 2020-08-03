import 'package:flutter/material.dart';
import 'package:belajar/30_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Colorful Button",
            style: TextStyle(
              fontFamily: "poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.purple])),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ColorfulButton(Colors.pink, Colors.purple, Icons.adb),
              ColorfulButton(Colors.green, Colors.yellow, Icons.home),
              ColorfulButton(Colors.cyan, Colors.blue, Icons.book),
              ColorfulButton(Colors.indigo, Colors.purple, Icons.android),
            ],
          ),
        ),
      ),
    );
  }
}
