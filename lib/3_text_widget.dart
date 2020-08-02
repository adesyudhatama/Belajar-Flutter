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
          title: Text("Text Widget"),
        ),
        body: Center(
            child: Container(
                color: Colors.pinkAccent,
                width: 150,
                height: 50,
                child: Center(
                  child: Text("Saya sedang belajar pemrogramman Flutter",
                      textAlign: TextAlign.center,
                      /*maxLines: 2,
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.center,*/
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      )),
                ))),
      ),
    );
  }
}
