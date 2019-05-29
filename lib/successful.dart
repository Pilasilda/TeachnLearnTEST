import 'package:flutter/material.dart';

class ResgistrationPage extends StatefulWidget{
  static String tag = 'ResgistrationPage';

  @override
  _ResgistrationPage createState() => new _ResgistrationPage();
}

class _ResgistrationPage extends State<ResgistrationPage>{

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


    final nextButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            color: Colors.lightBlueAccent,
            child: Text('OK', style: TextStyle(color: Colors.white)),
            onPressed: () {
              /*Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new _RegistrationPage())
              );*/
            }
        ),
      ),
    );



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 24.0),
            Text('Registration successfull', style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.normal, fontSize:25), textAlign:TextAlign.center,),
            nextButton
          ],
        ),
      ),
    );
  }
}