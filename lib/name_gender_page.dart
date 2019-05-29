import 'package:flutter/material.dart';
import 'email_pass_page.dart';

class NameGenderPage extends StatefulWidget{
  static String tag = 'NameGenderPage';

  @override
  _NameGenderPageState createState() => new _NameGenderPageState();
}

class _NameGenderPageState extends State<NameGenderPage>{
  bool _male = false;
  bool _female= false;

  void _maleChanged(bool value) => setState(() => _male = value);
  void _femaleChanged(bool value) => setState(() => _female = value);

  /*void onChanged(bool value) {
    setState((){
      _maleIsChecked = value;
      _femaleIsChecked = value;


    });*/



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
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new EmailPassPage())
              );
            }
        ),
      ),
    );

    final name = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Name',
        contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
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
                  children:<Widget>[
                    new Text('Gender ?'),
                  ]
              ),
              new CheckboxListTile(
                value: _male,
                onChanged: _maleChanged,
                title: new Text('Male'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              new CheckboxListTile(
                value: _female,
                onChanged: _femaleChanged,
                title: new Text('Female'),
                controlAffinity: ListTileControlAffinity.leading,
              ),

              /*  new Row (
                  children:<Widget>[
                    new Text('Gender ?'),
                  ]
              ),
              new Row(
                children: <Widget>[
                  new Text('Male'),
                  new Checkbox(value: _maleIsChecked, onChanged: (bool value){onChanged(value);}),
                ]
              ),
              new Row(
                children: <Widget>[
                  new Text('Female'),
                  new Checkbox(value: _femaleIsChecked, onChanged: (bool value){onChanged(value);}),
                  ]
              ),*/
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
            name,
            genderCheckbox,
            nextButton
          ],
        ),
      ),
    );
  }
}