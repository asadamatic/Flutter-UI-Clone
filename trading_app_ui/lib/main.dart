import 'package:flutter/material.dart';
import 'package:tradingappui/Screen/Account.dart';

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
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => LoadingScreen(),
        '/account': (context) => Account(),
      },
    );
  }
}

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void loadData() async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/account');
  }
  @override
  void initState() {
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff272d47),
      body: Center(
        child: Image(
        image: AssetImage('Assets/trading.png'),
          height: 100.0,
        ),
      ),
    );
  }

}
