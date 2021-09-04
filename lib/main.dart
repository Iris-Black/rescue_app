import 'AdminScreen/admin_screen_overview.dart';
import 'package:app/AdminScreen/admin_screen.dart';
import 'package:app/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'GuestScreen/guestscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TabletScreen/tablet_screen.dart';

void main() {
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    throw 1;
  }
}
