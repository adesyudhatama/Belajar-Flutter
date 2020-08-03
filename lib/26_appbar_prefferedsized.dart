import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            leading: Icon(Icons.account_circle),
            title: Text(
              "Ades Yudhatama ",
              style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
              ),
            ),
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepOrange, Colors.pink]))),
          ),
        ),
      ),
    );
  }
}
