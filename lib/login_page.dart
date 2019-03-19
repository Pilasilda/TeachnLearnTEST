import 'package:flutter/material.dart';
import 'package:flutter_app/login_page.dart';

class LoginPage extends StatefulWidget{
  static String tag = 'Loginpage';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('lib/wwf-logo-design.jpg'),
      )
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'pilasilda96@hotmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final passord = TextFormField(
        autofocus: false,
        initialValue: 'some password',
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'passowrd',
          contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)),
        ),
    );

    return new Container();
    }
}