import 'package:flutter/material.dart';
import 'who_are_you_page.dart';

class EmailPassPage extends StatefulWidget{
  static String tag = 'EmailPassPage';

  @override
  _EmailPassPageState createState() => new _EmailPassPageState();
}

class _EmailPassPageState extends State<EmailPassPage>{



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
                  new MaterialPageRoute(builder: (context) => new WhoAreYouPage())
              );
            }
        ),
      ),
    );



    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final password = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final confPass = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Confirm password',
        contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final terms = FlatButton(
      child: Text('Terms and conditions',
          style: TextStyle(color: Colors.black54)),
      onPressed: (){
        /*Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new RegistrationPage())
        );*/
      },
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
            email,
            password,
            confPass,
            terms,
            nextButton
          ],
        ),
      ),
    );
  }
}
