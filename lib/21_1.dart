import 'package:flutter/material.dart';

class MainPageMQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.album),
            title: Text("Media Query"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo, Colors.red],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomCenter,
                ),
              ),
            ),
          ),
          body: MediaQuery.of(context).orientation == Orientation.portrait
              ? Column(
                  children: generateContainers(),
                )
              : Row(
                  children: generateContainers(),
                )
          /*Container(
          color: Colors.pink,
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
        ),*/
          ),
    );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        color: Colors.pink,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.indigo,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.purple,
        width: 100,
        height: 100,
      ),
    ];
  }
}
