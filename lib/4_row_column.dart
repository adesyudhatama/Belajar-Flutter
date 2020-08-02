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
          title: Text("Row & Column"),
        ),
        /*body: Column(
          children: <Widget>[Text("Data 1"), Text("Data 2")],
        ),*/
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Data 1"),
            Text("Data 2"),
            Row(
              children: <Widget>[Text("Data 3"), Text("Data 4")],
            )
          ],
        ),
      ),
    );
  }
}
