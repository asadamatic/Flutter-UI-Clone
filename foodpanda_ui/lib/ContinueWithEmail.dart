import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContinueWithEmail extends StatefulWidget{

  @override
  State createState() {
    return _ContinueWithEmailState();
  }
}

class _ContinueWithEmailState extends State<ContinueWithEmail>{

  TextEditingController emailController = TextEditingController();
  bool emailError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xffd70f64)
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
                onTap: (){
                  if (!emailController.text.isEmpty) {
                    Navigator.pushNamed(context, '/loginScreen', arguments: {
                      'email': emailController.text,
                    });
                  }else{
                    setState(() {
                      emailError = true;
                    });
                  }
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("What's your email?", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10.0,),
                    Text('Well see if you already have an account?', style: TextStyle(fontSize: 15.0),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          errorText: emailError ? 'Enter you email':null,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}