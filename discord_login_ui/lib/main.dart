import 'package:discordloginui/Screen/Login.dart';
import 'package:discordloginui/Screen/Register.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/register': (context) => Register(),
        '/login': (context) => Login()
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Image(
                 image: AssetImage('Assets/logo.png'),
                  height: 100.0,

                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('Welcome to Discord', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Join over 200 million people who use Discord', style: TextStyle(fontSize: 15.0),),
                        SizedBox(height: 5.0),
                        Text(' to chat with friends. for free', style: TextStyle(fontSize: 15.0),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            color: Colors.indigo,
                            child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            color: Colors.grey[700],
                            child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
