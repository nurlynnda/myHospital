import 'package:flutter/material.dart';

class HomeBodyPage extends StatelessWidget {
  //HomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Card(
        color: Colors.cyan[800],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
            height: 100,
            width: 500,
            child: ListTile(
              title: Text("Hello, Qudri",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, color: Colors.white)),
            )),
      ),
    );
  }
}
