import 'package:flutter/material.dart';
import 'package:belajar/23_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomCard(),
    );
  }
}
