// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:doctor_app/screens/login/login_text_fields.dart';
import '../view.dart';
import 'login_buttons.dart';
import 'login_screen.dart';
import 'login_viewmodel.dart';

class LoginBody extends StatelessWidget {
  final LoginScreenState _state;

  LoginBody(this._state);

  @override
  Widget build(BuildContext context) {
    return View<LoginViewmodel>(
      builder: (context, viewmodel, _) => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...buildLoginTextFields(_state),
          if (viewmodel.errorMessage != null)
            Text(
              viewmodel.errorMessage,
              style: TextStyle(color: Colors.red, fontSize: 20.0),
            ),
          const SizedBox(height: 10.0),
          LoginButtons(viewmodel: viewmodel, state: _state),
        ],
      ),
    );
  }
}
