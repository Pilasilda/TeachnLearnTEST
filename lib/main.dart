import 'first_login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  final routes = <String, WidgetBuilder>{
    FirstLoginPage.tag: (context) => FirstLoginPage(),
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
      home: FirstLoginPage(),
      routes: routes,
    );
  }
}