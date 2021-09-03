import 'package:app/GuestScreen/guestscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          height: 250,
          color: Colors.pink,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/guest_screen');
            },
            child: Text("Enter as Guest")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/admin_login_screen');
            },
            child: Text("Login as Admin")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/guest_screen');
            },
            child: Text("Sign up to be an Admin"))
      ],
    );
  }
}
