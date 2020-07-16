import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
class LoadingScreen extends StatefulWidget{

  @override
  State createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen>{

  void loadHome() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/home');
  }
  @override
  void initState() {
    super.initState();
    loadHome();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('Assets/fblogo.png'),
                radius: 35.0,
              ),
            ),
            SizedBox(height: 15.0),
            JumpingDotsProgressIndicator(
              fontSize: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}