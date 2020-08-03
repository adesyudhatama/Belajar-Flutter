import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QRScan(),
    );
  }
}

class QRScan extends StatefulWidget {
  @override
  _QRScanState createState() => _QRScanState();
}

class _QRScanState extends State<QRScan> {
  String text = "Hasil Scan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QR Scanner",
          style: TextStyle(fontFamily: "poppins", fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.deepOrange, Colors.orange])),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
              child: Text("Scan"),
            )
          ],
        ),
      ),
    );
  }
}
