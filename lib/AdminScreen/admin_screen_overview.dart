import 'package:flutter/material.dart';

class AdminOverviewScreen extends StatefulWidget {
  AdminOverviewScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _AdminOverviewScreenState createState() => _AdminOverviewScreenState();
}

class _AdminOverviewScreenState extends State<AdminOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.pink,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
