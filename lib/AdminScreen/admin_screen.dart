import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  AdminScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  late String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (input) {
                if (input!.isEmpty) {
                  return "Please type in an email";
                }
              },
              onSaved: (input) => _email = input!,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            TextFormField(
              validator: (input) {
                if (input!.length < 6) {
                  return "Please type in a more secure password, at least 6 characters";
                }
              },
              obscureText: true,
              onSaved: (input) => _password = input!,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/admin_screen/admin_screen_overview');
                },
                child: Text('Log in'))
          ],
        ),
      ),
    );
  }
  void SignIn(){
    final _form = _formey
    //TODO: validate and login
  }
}
