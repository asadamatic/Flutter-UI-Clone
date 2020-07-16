import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snapchatloginui/Account/LoginScreen.dart';
import 'package:snapchatloginui/Account/SignupScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.grey,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/loginScreen': (context) => LoginScreen(),
        '/signupScreen': (context) => SignupScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xfffffc00),
      body: Center(

        child: Column(
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(top: 180.0),
             child: Image(
               height: 100.0,
               image: AssetImage('Assets/snap.png'),
             ),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                  child: FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text('Log In'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginScreen');
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 20.0),
                  child: FlatButton(
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text('Sign Up'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signupScreen');
                    },
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
