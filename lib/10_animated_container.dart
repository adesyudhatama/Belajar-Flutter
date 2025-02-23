import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Animated Container & Gesture"),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101),
                color: Color.fromARGB(25, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
              ),
            ),
          )),
    );
  }
}
