import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah Text";

  /* void pressed() {
    setState(() {
      message = "Tombol Sudah Ditekan";
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text("Button"),
                color: Colors.pinkAccent,
                onPressed: () {
                  setState(() {
                    message = "Tombol Sudah ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
