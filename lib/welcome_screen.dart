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
          width: 256,
          height: 256,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://i.ibb.co/6bj4R4G/bitmap.png'),
                fit: BoxFit.fitHeight),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/guest_screen');
            },
            child: Text("Enter as Guest")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/admin_screen');
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
