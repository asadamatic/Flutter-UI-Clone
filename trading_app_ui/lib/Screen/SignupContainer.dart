import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SignupContainer extends StatefulWidget{


  @override
  State createState() {
    return _SignupContainerState();
  }
}

class _SignupContainerState extends State<SignupContainer>{

  bool termsAndConditions = false;

  GlobalKey<FormState> _loginFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blueGrey,
            child: Form(
              key: _loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Please make a deposit to start making real ', style: TextStyle(color: Colors.white),),
                      Text('money', style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white38,
                            )
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        )
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white38,
                            )
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: CheckboxListTile(
                      onChanged: (bool value){
                        setState(() {
                          termsAndConditions = value;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      value: termsAndConditions,
                      title: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'I accept '),
                            TextSpan(text: 'terms and conditions', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 50.0,
                            child: FlatButton(
                              color: Color(0xff3facff),
                              child: Text('LOGIN', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                              onPressed: () {

                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 50.0,
                            child: FlatButton.icon(
                              icon: Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              color: Colors.blue[800],
                              label: Text('FACEBOOK', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                              onPressed: () {

                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: Container(
                            height: 50.0,
                            child: FlatButton.icon(
                              icon: Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              color: Colors.red,
                              label: Text('GOOGLE', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                              onPressed: () {

                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'Already have an account? Please ', style: TextStyle(color: Colors.grey),),
                    TextSpan(text: 'click here ', style: TextStyle(color: Colors.white), recognizer: TapGestureRecognizer()..onTap = () {
                      //Change tab
                      }
                    ),
                    TextSpan(text: 'to login in', style: TextStyle(color: Colors.grey),),
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