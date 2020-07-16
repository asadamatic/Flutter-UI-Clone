import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';


class LoginScren extends StatefulWidget {
  LoginScren({Key key,}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScren> {

  final countryCodeControler = TextEditingController(text: '+92');
  String countryCodeValue = '+92';
  TextEditingController phonebumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Enter you phone number', style: TextStyle(color: Color(0xff1ebea5)),),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          Icon(
            Icons.more_vert,
            color: Colors.grey[800],
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('WhatsApp will send an SMS message to verify your'),
                    SizedBox(height: 4.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('phone number. '),
                        Text("What's my number?", style: TextStyle(color: Colors.blue[800])),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CountryCodePicker(
                    onChanged: (CountryCode code){
                      setState(() {
                        countryCodeControler.text = code.toString();
                      });
                    },
                    initialSelection: 'pk',
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: true,
                  ),
                ),
                Form(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: countryCodeControler,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff1ebea5)
                              )
                            )
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      Expanded(
                        flex: 4,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff1ebea5)
                                  )
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Text('Carrier SMS charges may apply.', style: TextStyle(fontSize: 16.0),),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  child: Text('Next'),
                  color: Color(0xff00e676),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}