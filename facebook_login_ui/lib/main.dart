import 'package:facebookloginui/Pages/LoadingScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        '/': (context) => LoadingScreen(),
        '/home': (context) => LoginScreen(),
      },
    );
  }
}

class LoginScreen extends StatefulWidget{

  @override
  State createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen>{


  GlobalKey<FormState> _loginFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xffffffff),
              height: 140.0,
              child: Center(
                child: Hero(
                  tag: 'fblogo',
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('Assets/fblogo.png'),
                    radius: 35.0,
                  ),
                ),
              ) ,),
            SizedBox(height: 40.0,),
            Form(
              key: _loginFormKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Phone or email',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1877f2),
                          )
                        )
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff1877f2),
                            )
                        )
                      ),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: Color(0xff1877f2),
                            textColor: Colors.white,
                            child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),),
                            onPressed: () {

                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Forgot Password?', style: TextStyle(color: Color(0xff1877f2), fontWeight: FontWeight.bold, fontSize: 14.0),)
              ],
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: .75,
                    ),
                  ),
                  Text('OR',),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: .75,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('Create New Facebook Account', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1,),),
                  onPressed: () { },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
