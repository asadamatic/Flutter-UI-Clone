import 'package:flutter/cupertino.dart';
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
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Sign in'),
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

  GlobalKey<FormState> _loginFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(widget.title),
        leading: Icon(
          Icons.arrow_back,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 80.0, 15.0, 0.0),
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('Assets/logo.png'),
                        backgroundColor: Colors.white,
                        radius: 25.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Welcome back', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Sign in to Fiverr to pick up exactly where you left off.', style: TextStyle(wordSpacing: 1, ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: FlatButton(
                                child: Text('FACEBOOK'),
                                color: Colors.indigo,
                                textColor: Colors.white,
                                onPressed: (){},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: FlatButton(
                                child: Text('GOOGLE'),
                                color: Colors.blue[900],
                                textColor: Colors.white,
                                onPressed: (){},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('or sign in with email'),
                        ],
                      ),
                    ),
                    Form(
                      key: _loginFormKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email or username',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff1dbf73)
                                )
                              )
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff1dbf73)
                                    )
                                )
                            ),
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: FlatButton(
                                    child: Text('CONTINE', style: TextStyle(fontSize: 16.0, letterSpacing: 1, fontWeight: FontWeight.bold),),
                                    color: Colors.blue[900],
                                    textColor: Colors.white,
                                    onPressed: (){},
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('JOIN', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff1dbf73)),),
                                Text('FORGOT PASSWORD', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff1dbf73)),)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
