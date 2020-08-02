import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Image Widget")),
        body: Center(
          child: Container(
            color: Colors.pink,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(5),
            child: Image(image: AssetImage("assets/images/knighturnal.png")),
          ),
        ),
      ),
    );
  }
}
