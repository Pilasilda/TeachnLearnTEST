import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  static String tag = 'Loginpage';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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

  final forgotLabel = FlatButton(
    child: Text('Forgot password?',
        style: TextStyle(color: Colors.black54)),
    onPressed: (){},
  );



  @override
  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    body: Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0,top: 250),
      child: Align(
        alignment: Alignment.bottomCenter,
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
              validator: (val) =>
              val.length < 4 ? 'Password too short..' : null,
              onSaved: (val) => _password = val,
              //obscureText: true,
            ),

            forgotLabel,

            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 60.0),
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              onPressed: _submitCommand,
              child: Text('Log in'),
            ),
          ],
        ),
      ),
      ),
      ),
  );
  }
}



