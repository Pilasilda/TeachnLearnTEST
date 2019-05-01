import 'login_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_app/login_page.dart';

class FirstLoginPage extends StatefulWidget{
  static String tag = 'FirstLoginpage';

  @override
  _FirstLoginPageState createState() => new _FirstLoginPageState();
}

class _FirstLoginPageState extends State<FirstLoginPage>{
  @override
  Widget build(BuildContext context){

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: new Image.asset("lib/wwf-logo-design.jpg"),
      ),
    );


    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new LoginPage())
            );
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

  /*  final registerLabel = FlatButton(
      child: Text('Not registered?',
          style: TextStyle(color: Colors.black54)),
      onPressed: (){
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new registration_page())
        );
      },
    ); */

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 24.0),
            loginButton,
            //registerLabel
          ],
        ),
      ),
    );
  }
}



