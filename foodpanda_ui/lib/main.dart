import 'package:flutter/material.dart';
import 'package:foodpandaui/ContinueWithEmail.dart';
import 'package:foodpandaui/HomeScreen.dart';
import 'package:foodpandaui/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => LoadingScreen(),
        '/home': (context) => HomeScreen(),
        '/continue': (context) => ContinueWithEmail(),
        '/loginScreen': (context) => LoginScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Color(0xffd70f64),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void goToHome()  async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/home');
  }
  @override
  void initState(){
    super.initState();
    goToHome();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd70f64),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              foregroundColor: Colors.white,
              backgroundColor: Color(0xffd70f64),
              backgroundImage: AssetImage('Assets/panda.png'),
            ),
            SizedBox(height: 15.0,),
            Text('FOODPANDA', style: TextStyle(color: Colors.white, fontSize: 18.0, letterSpacing: 1.3, fontWeight: FontWeight.bold, height: 2),)
          ],
        ),
      ),
    );
  }


}
