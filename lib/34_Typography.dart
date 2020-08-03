import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Typography",
            style:
                TextStyle(fontFamily: "popppins", fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.purple])),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Text Normal",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Small Caps",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                "Old Style",
                style: TextStyle(
                    fontSize: 20,
                    fontFeatures: [FontFeature.oldstyleFigures()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
