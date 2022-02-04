// @dart=2.9

import 'package:doctor_app/app/service_locator.dart';
import 'package:doctor_app/screens/home/homescreen.dart';
import 'package:doctor_app/screens/login/login_screen.dart';
import 'package:doctor_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeServiceLocator();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Healthcare - Doctor Consultation App',
    home: WelcomeScreen(),
  ));
}
