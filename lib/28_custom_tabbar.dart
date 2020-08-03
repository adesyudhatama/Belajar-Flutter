import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.pinkAccent,
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home),
          text: "Home",
        ),
        Tab(
          icon: Icon(Icons.account_circle),
          text: "User",
        ),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
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
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.purple, child: myTabBar)),
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
