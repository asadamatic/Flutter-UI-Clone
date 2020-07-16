import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passwordHidden = false;
  GlobalKey<FormState> _loginFormKey = GlobalKey();
  bool buttonEnabled = false;
  bool passwordFieldEmpty, emailFieldEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Form(
              key: _loginFormKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'USERNAME OR EMAIL',
                                  labelStyle: TextStyle(color: Colors.lightBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )
                                  )
                                ),
                                onChanged: (String value){
                                  setState(() {
                                    emailFieldEmpty = value.isEmpty ? true: false;

                                    if (!emailFieldEmpty && !passwordFieldEmpty){
                                      buttonEnabled = true;
                                    }else{
                                      buttonEnabled = false;
                                    }
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                obscureText: passwordHidden,
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          passwordHidden = passwordHidden ? false: true;
                                        });
                                      },
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.lightBlue,
                                      ),
                                    ),
                                    labelText: 'PASSWORD',
                                    labelStyle: TextStyle(color: Colors.lightBlue,),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        )
                                    ),
                                ),
                                onChanged: (String value){
                                  setState(() {
                                    passwordFieldEmpty = value.isEmpty ? true: false;

                                    if (!emailFieldEmpty && !passwordFieldEmpty){
                                      buttonEnabled = true;
                                    }else{
                                      buttonEnabled = false;
                                    }
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: GestureDetector(
                                    onTap: () {

                                    },
                                    child: Text('Forgot your password?', style: TextStyle(color: Colors.lightBlue),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, .0, 40.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.white,
                              color: Colors.lightBlue,
                              textColor: Colors.white,
                              onPressed: buttonEnabled ? () {

                              } : null,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Log In', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

