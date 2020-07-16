import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  GlobalKey<FormState> _registerForm = GlobalKey();

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
                  key: _registerForm,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 1.0, 0.0),
                            child: Text('WHAT SHOULD EVERYONE CALL YOU?', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                        child: TextFormField(
                          validator: (value){
                            if (value.isEmpty){
                              return 'Username is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Username',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                            child: Text('ACCOUNT INFORMATION', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
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
                                Text("By registering, you agree to Discord's "),
                                GestureDetector(
                                    onTap: () {},
                                    child: Text('Terms of Service ', style: TextStyle(color: Colors.blue),)),

                              ],
                            ),
                            SizedBox(height: 5.0,),
                            Row(
                              children: <Widget>[
                                Text('and '),
                                GestureDetector(
                                  onTap: () {},
                                    child: Text('Privacy Policy', style: TextStyle(color: Colors.blue), ))

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
                                child: Text('Create an account', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                onPressed: () {

                                  if (_registerForm.currentState.validate()){
                                    print('Registered');
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