import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget{

  @override
  State createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen>{

  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
                onTap: (){

                },
                child: Text('Next', style: TextStyle(fontSize: 16.0, color: Color(0xffd70f64),),)),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Image(
                  height: 100.0,
                  image: AssetImage('Assets/email.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
                child: Text("Log in with your Email", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Form(
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'Email',
                                labelStyle: TextStyle(
                                    color: Colors.black
                                ),
                                border: OutlineInputBorder(
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: TextField(
                            obscureText: passwordVisibility,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                child: Icon(
                                  Icons.lock,
                                ),
                                onTap: (){
                                  setState(() {
                                    passwordVisibility = passwordVisibility ? false : true;
                                  });
                                },
                              ),
                                labelText: 'Password',
                                hintText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.black
                                ),
                                border: OutlineInputBorder(
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
                          child: GestureDetector(
                            child: Text('I forgot my password.', style: TextStyle(fontSize: 16.0, color: Color(0xffd70f64)),),
                            onTap: (){

                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}