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
          title: Text("Container"),
        ),
        body: Container(
          color: Colors.orangeAccent,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Container(
            //color: Colors.pinkAccent,
            //margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    colors: <Color>[Colors.pink, Colors.yellow])),
          ),
        ),
      ),
    );
  }
}
