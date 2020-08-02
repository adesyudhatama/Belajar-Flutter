import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.deepOrange,
          child: Text("Back"),
        ),
      ),
    ));
  }
}
