import 'package:flutter/material.dart';

class WhoAreYouPage extends StatefulWidget{
  static String tag = 'WhoAreYouPage';

  @override
  _WhoAreYouState createState() => new _WhoAreYouState();
}

class _WhoAreYouState extends State<WhoAreYouPage>{
  bool _teacher = false;
  bool _student = false;

  void _teacherchanged(bool value) => setState(() => _teacher = value);
  void _studentchanged(bool value) => setState(() => _student = value);

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
            child: Text('Next', style: TextStyle(color: Colors.white)),
            onPressed: () {
              //Navigator.push(context,
              //    new MaterialPageRoute(builder: (context) => new _Who_Are_You())
              // );
            }
        ),
      ),
    );



    final genderCheckbox = new Container(
      padding: new EdgeInsets.all(14.0),
      child: new Center(
        child:
        new Column(
            children: <Widget>[
              new Row(
                  children: <Widget>[
                    new Text('Student'),
                    new Checkbox(value: _teacher, onChanged: _teacherchanged),
                  ]
              ),
              new Row(
                  children: <Widget>[
                    new Text('Teacher'),
                    new Checkbox(value: _student, onChanged: _studentchanged),
                  ]
              ),
            ]
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
            Text('Who are you?', style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.normal, fontSize:25), textAlign:TextAlign.center,),
            genderCheckbox,
            nextButton
          ],
        ),
      ),
    );
  }
}