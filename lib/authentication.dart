import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginPage(
        toggleView: toggleView,
      );
    } else {
      return RegisterPage(toggleView: toggleView);
    }
  }
}
