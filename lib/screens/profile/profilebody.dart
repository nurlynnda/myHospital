import 'package:doctor_app/models/profile.dart';
import 'package:doctor_app/screens/profile/profile_viewmodel.dart';
import 'package:doctor_app/screens/view.dart';
import 'package:flutter/material.dart';

class ProfileBodyPage extends StatelessWidget {
  // final int index;

  // const ProfileBodyPage(this.index);

  @override
  Widget build(BuildContext context) {
    return SelectorView<ProfileViewModel, Profile>(
        selector: (_, vm) => vm.getProfile(),
        builder: (_, vm, profile, ___) {
          print('Build ListTile ');

          return Scaffold(
            backgroundColor: Colors.cyan[800],
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                Text(
                  "Name: ${profile.firstName} ${profile.lastName}",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  "IC: ${profile.ic}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[200],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                Text(
                  "Phone: ${profile.phone}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[200],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                Text(
                  "Age: ${profile.age}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[200],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                Text(
                  "Gender: ${profile.gender}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[200],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            )),
          );
        });
  }
}
