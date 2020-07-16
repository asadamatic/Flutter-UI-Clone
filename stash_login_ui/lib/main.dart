import 'package:flutter/material.dart';
import 'package:stashloginui/LoginScreen.dart';

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

        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/loginScreen': (context) => LoginScreen(),
      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void splash() async{

    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/loginScreen');
  }
  @override
  void initState() {
    super.initState();
    splash();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'logo',
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('Assets/logo.png')
                ),
                Text('STASH', style: TextStyle(color: Colors.amber, fontSize: 24.0, fontWeight: FontWeight.bold),),
                Text('MART AT YOUR DOORSTEP', style: TextStyle(color: Colors.green, fontSize: 12.0),)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
