import 'package:flutter/material.dart';
import 'name_gender_page.dart';

class RegistrationPage extends StatefulWidget{
  static String tag = 'RegistrationPage';

  @override
  _RegistrationPageState createState() => new _RegistrationPageState();
}

final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
final scaffoldKey = GlobalKey<ScaffoldState>();
var passKey = GlobalKey<FormFieldState>();

String _email;
String _password;


void _submitCommand(){
  final form = _formKey.currentState;

  if(form.validate()){
    form.save();

    _loginCommand();
  }
}

void _loginCommand(){
  final snackBar = SnackBar(
    content: Text('Email: $_email, password: $_password'),
  );
  scaffoldKey.currentState.showSnackBar(snackBar);
}

final logo = Hero(
  tag: 'Logo',
  child: Align(
    alignment: Alignment.bottomCenter,
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 80.0,
      child: new Image.asset("lib/wwf-logo-design.jpg"),
    ),
  ),
);

class _RegistrationPageState extends State<RegistrationPage>{
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: 24.0, right: 24.0,top: 250),
      child: Form(
        key: _formKey,
      child: Column (
        children: [
          logo,
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Email',
              contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)
            ),
          ),
          validator: (val) => val.isEmpty ? 'Please enter a valid emailadress' : null,
          onSaved: (val) => _email = val,
        ),

          TextFormField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'password',
              contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0)),
            ),
            validator: (_password){
              var result = _password.length < 4 ? "Password should have at least 4 characters" : null;
              return result;
            },
          ),
          new TextFormField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm password',
              contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)),
            ),
            validator: (value){
              if (value != _password) {
                System.out.print("value: " + value + "| password: " + password);
                return 'Password is not matching';
              }else if(value == _password){
                NameGenderPage();
              }
            },
          ),

          RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 60.0),
            color: Colors.lightBlueAccent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            onPressed: _submitCommand,
            child: Text('Next'),
          ),
        ],
      ),
      ),
        ),
    );
  }
}



