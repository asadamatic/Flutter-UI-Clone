import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Color(0xfff2c965),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool securePassword = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Assets/amazon.png',
                fit: BoxFit.cover,
                height: 32,
              ),
            ],
          ),
          backgroundColor: Color(0xfff1f2f4),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40.0,
                  child: TabBar(
                    unselectedLabelColor: Colors.black45,
                    labelColor: Colors.black,
                    tabs: <Widget>[
                      Tab(

                        text: 'Sign up',
                      ),
                      Tab(

                        text: 'Sign in',
                      )
                    ],

                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                          child: Form(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 60.0,
                                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: 'Name',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black38,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintText: 'Mobile nubmer or Email',
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black38
                                            )
                                        )
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60.0,
                                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                                  child: TextFormField(
                                    obscureText: securePassword,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintText: 'Create a password',
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black38
                                            )
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                              Icons.lock
                                          ),
                                          onPressed: (){
                                            setState(() {
                                              securePassword = securePassword ? false : true;
                                            });
                                          },
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Flexible(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          height: 40.0,
                                          child: RaisedButton(
                                            child: Text('Continue'),
                                            color: Color(0xfff2c965),
                                            onPressed: (){},
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ),
                      Container(
                        child: Container(
                          height: 200.0,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                            child: Form(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 60.0,
                                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                                    child: TextFormField(
                                      obscureText: securePassword,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'Enter your password',
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black38
                                              )
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                                Icons.lock
                                            ),
                                            onPressed: (){
                                              setState(() {
                                                securePassword = securePassword ? false : true;
                                              });
                                            },
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.0,),
                                  Flexible(
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            height: 40.0,
                                            child: RaisedButton(
                                              child: Text('Continue'),
                                              color: Color(0xfff2c965),
                                              onPressed: (){},
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ),
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
      ),
    );
  }
}
