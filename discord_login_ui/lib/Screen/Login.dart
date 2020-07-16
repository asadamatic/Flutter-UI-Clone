import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  GlobalKey<FormState> _loginForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Form(
                    key: _loginForm,
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                                  child: Text('Welcome back!', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                                  child: Text('Login with your email to start chatting', style: TextStyle(fontSize: 14.0),),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                          child: TextFormField(
                            validator: (value){
                              if (value.isEmpty){
                                return 'Email is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.grey[700]
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                          child: TextFormField(
                            validator: (value){
                              if (value.isEmpty){
                                return 'Password is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey[700]
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {},
                                      child: Text('Forgot password?', style: TextStyle(color: Colors.blue),)),
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {},
                                      child: Text('Use password manager?', style: TextStyle(color: Colors.blue), ))

                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  color: Colors.indigo,
                                  child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                  onPressed: () {

                                    if (_loginForm.currentState.validate()){
                                      print('Logged in');
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
          )
        ],
      ),
    );
  }
}