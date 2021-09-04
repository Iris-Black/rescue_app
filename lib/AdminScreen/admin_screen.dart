import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  AdminScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
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
                Navigator.pushNamed(
                    context, '/admin_screen/admin_screen_overview');
              },
              child: Text('Log in'))
        ],
      ),
    );
  }
}
