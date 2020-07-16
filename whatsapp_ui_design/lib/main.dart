import 'package:flutter/material.dart';
import 'package:whatsappuidesign/Screens/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MyHomePage(),
        '/loginScreen': (context) => LoginScren(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 15.0),
          child: ListView(
            children: <Widget>[
              Center(child: Text('Welcom to WhatsApp', style: TextStyle(fontSize: 28.0),)),
              SizedBox(height: 70.0,),
              FlutterLogo(size: 150.0,),
              SizedBox(height: 80.0,),
              RichText(
                textAlign: TextAlign.center,

                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Read our ', style: TextStyle(color: Colors.grey[800])),
                    TextSpan(text: 'Privacy Policy', style: TextStyle(color: Colors.blue[800])),
                    TextSpan(text: '. Tap "Agree and continue" to accept the ', style: TextStyle(color: Colors.grey[800])),
                    TextSpan(text: 'Terms of Service', style: TextStyle(color: Colors.blue[800]))
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: FlatButton(
                          child: Text('AGREE AND CONTINUE', style: TextStyle(letterSpacing: 1),),
                          textColor: Colors.white,
                          color: Color(0xff00e676),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/loginScreen');
                          },

                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 10.0),
                child: Center(
                  child: Text('from'),
                ),
              ),
              Center(
                child: Text('FACEBOOK', style: TextStyle(letterSpacing: 1.4, color: Color(0xff00e676)),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
