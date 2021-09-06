import 'AdminScreen/admin_screen_overview.dart';
import 'package:app/AdminScreen/admin_screen.dart';
import 'package:app/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'GuestScreen/guestscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TabletScreen/tablet_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome_screen',
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        '/welcome_screen': (BuildContext context) => WelcomeScreen(),
        '/guest_screen': (BuildContext context) =>
            GuestScreen(title: 'İzmir Amerikan Koleji'),
        '/admin_screen': (BuildContext context) => AdminScreen(
              title: 'İzmir Amerikan Koleji',
            ),
        '/admin_screen/admin_screen_overview': (BuildContext context) =>
            AdminOverviewScreen(title: 'title'),
        '/tablet_screen': (BuildContext context) => TabletScreen()
      },
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme:
              GoogleFonts.ibmPlexMonoTextTheme(Theme.of(context).textTheme)),
      home: MyHomePage(title: 'Tahliye Sistemi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    throw 1;
  }
}
