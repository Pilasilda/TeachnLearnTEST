import 'package:flutter/material.dart';
import 'login_page.dart';

void mainpage() => runApp (new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

class Mainpage extends StatefulWidget{
  static String tag = 'Mainpage';

  @override
  _Mainpage createState()  => new _Mainpage();
}

class _Mainpage extends State<Mainpage>{
  @override
  Widget build(BuildContext context){

    final rajani = Hero(
      tag : 'hero',
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 48.0,
            child: new Image.asset("lib/wwf-logo-design.jpg"),
    ),
    );
  }
}
