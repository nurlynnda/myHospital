import 'package:doctor_app/models/profile.dart';
import 'package:doctor_app/screens/home/bottombar.dart';
import 'package:doctor_app/screens/profile/profilebody.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  int index;

  //final Profile profile;

  //const ProfilePage({Key key, @required this.profile}) : super(key: key);

  // final List<Profile> _data;

  // ProfilePage(this._data);

  // static Route route({data}) =>
  //     MaterialPageRoute(builder: (context) => ProfilePage(data));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[200],
        title: Text('Profile'),
      ),
      body: ProfileBodyPage(index),
      bottomNavigationBar: BottomNavigation(select: Menu.profile),
    );
  }
}
