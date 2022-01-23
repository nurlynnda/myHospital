import 'package:doctor_app/screens/home/homebody.dart';
import 'package:flutter/material.dart';
import 'bottombar.dart';

class HomePage extends StatelessWidget {
  //HomePage({Key key, this.title}) : super(key: key);
  //final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[200],
        title: Text('Home'),
      ),
      body: HomeBodyPage(),
      bottomNavigationBar: BottomNavigation(
        select: Menu.home,
      ),
    );
  }
}
