import 'package:belajar/16_3.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
            color: Colors.pink,
            child: Text("Go To Second Page"),
          ),
        ),
      ),
    );
  }
}
