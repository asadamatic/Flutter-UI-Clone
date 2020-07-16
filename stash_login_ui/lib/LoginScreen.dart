import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> _loginForm = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
            child: Hero(
              tag: 'logo',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('Assets/logo.png'),
                  ),
                  Text('STASH', style: TextStyle(color: Colors.amber, fontSize: 24.0, fontWeight: FontWeight.bold),),
                  Text('MART AT YOUR DOORSTEP', style: TextStyle(color: Colors.green, fontSize: 12.0),)
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Form(
                    key: _loginForm,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          validator: (value){
                            if (value.isEmpty){
                              return 'Your name is required';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              labelText: 'Name',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.amber,
                                  )
                              )
                          ),
                        ),
                        TextFormField(
                          onChanged: (value){
                            setState(() {

                            });
                          },
                          validator: (value){
                            if (value.isEmpty){
                              return 'Your number is required';
                            }else if(value.length != 11){
                              return 'Enter a valid phone number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelText: 'Number',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.amber,
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 50.0,
                                  child: FlatButton(
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      if (_loginForm.currentState.validate()){
                                        print('Logged In');
                                      }
                                    },
                                    child: Text('Sign In', style: TextStyle(fontSize: 18.0),),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),

        ],

                ),
    );
  }
}
