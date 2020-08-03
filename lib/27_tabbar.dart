import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Tab Bar",
              style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.deepOrange, Colors.pink]),
              ),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.album),
                  text: "Album",
                ),
                Tab(
                  icon: Icon(Icons.alarm),
                  text: "Alarm",
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                  text: "User",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
              Center(
                child: Icon(
                  Icons.album,
                  size: 50,
                ),
              ),
              Center(
                child: Icon(
                  Icons.alarm,
                  size: 50,
                ),
              ),
              Center(
                child: Icon(
                  Icons.account_circle,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
