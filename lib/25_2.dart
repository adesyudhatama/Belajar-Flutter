import 'package:flutter/material.dart';

class HeroAnimation2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Hero Animation"),
      ),
      body: Hero(
        tag: 'profil',
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 300,
          child: Image(
            image: AssetImage("assets/images/knighturnal.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
