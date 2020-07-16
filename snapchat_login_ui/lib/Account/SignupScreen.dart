import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

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

                            Text("What's your name?", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'FIRST NAME',
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
                              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'LAST NAME',
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
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
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
                                child: Text('Sign Up & Accept', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
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

