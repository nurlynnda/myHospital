import 'package:doctor_app/models/user.dart';
import 'package:doctor_app/screens/home/home_viewmodel.dart';
import 'package:doctor_app/screens/home/homebody.dart';
import 'package:doctor_app/screens/home/homescreensigned.dart';
import 'package:doctor_app/screens/login/login_screen.dart';
import 'package:doctor_app/screens/view.dart';
import 'package:flutter/material.dart';
import 'bottombar.dart';

class HomePage extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (_) => HomePage());
  final User user;

  HomePage({this.user});

  @override
  Widget build(BuildContext context) {
    return View<HomeViewmodel>(
        builder: (_, vm, __) =>
            vm.user != null ? HomeScreenSignedIn() : LoginScreen());
  }
}
