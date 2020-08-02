import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Card"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.indigo])),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepOrange, Colors.lime],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  child: Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/pattern.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4),
                            ),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/knighturnal.png"),
                                fit: BoxFit.cover)),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              10,
                              30 + MediaQuery.of(context).size.height * 0.35,
                              10,
                              10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "'Title'",
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: "poppins",
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Posted on  ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "August 10, 2020",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Spacer(
                                    flex: 10,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    size: 14,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    "22",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(
                                    flex: 5,
                                  ),
                                  Icon(
                                    Icons.comment,
                                    size: 14,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    "22",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Spacer(
                                    flex: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
