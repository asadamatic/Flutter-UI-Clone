
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  @override
  State createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd70f64),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Image(
                  height: 250.0,
                  image: AssetImage('Assets/food.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Text('Foodpanda uses your location to show ', style: TextStyle(fontSize: 17.0),),
                    Text('resturants near you!', style: TextStyle(fontSize: 17.0),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Text('USE CURRENT LOCATION', style: TextStyle(color: Colors.white),),
                        color: Color(0xffd70f64),
                        onPressed: () {
                          Navigator.pushNamed(context, '/continue');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: GestureDetector(
                      child: Text('SET ANOTHER LOCATION', style: TextStyle(fontSize: 16.0, color: Color(0xffd70f64)),),
                      onTap: (){

                      },
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}