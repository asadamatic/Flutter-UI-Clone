import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: false,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('Assets/logo.png'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Form(
                  key: _loginFormKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                        child: TextFormField(
                          validator: (String value){
                            return value.isEmpty? 'Please fill out this field!':null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Phone Number or Email',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
                        child: TextFormField(
                          validator: (String value){
                            return value.isEmpty? 'Please fill out this field!':null;
                          },
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: RaisedButton(
                                child: Text('LOG IN'),
                                onPressed: (){
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: RaisedButton(
                                color: Color(0xff5ad539),
                                textColor: Colors.white,
                                child: Text('CREATE NEW ACCOUNT'),
                                onPressed: (){
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('forgot password?', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),)
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
