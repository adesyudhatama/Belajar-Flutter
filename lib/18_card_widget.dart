import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Card Widget"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.people, "Person"),
              buildCard(Icons.exit_to_app, "Exit"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData icon, String text) {
    return Card(
      elevation: 10,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Icon(icon),
          ),
          Text(text)
        ],
      ),
    );
  }
}
