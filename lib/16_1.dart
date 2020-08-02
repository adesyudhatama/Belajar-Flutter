import 'package:belajar/16_2.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            child: Text("KUDA"),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
            color: Colors.deepOrange,
            textColor: Colors.white,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
