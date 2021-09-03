import 'package:flutter/material.dart';

class AdminLoginScreen extends StatefulWidget {
  AdminLoginScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.pink,
            width: 100,
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/admin_screen');
              },
              child: Text('Log in'))
        ],
      ),
    );
  }
}
