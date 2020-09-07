import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp takes a Widget app(is low level) /materialApp /cuppertino for ios
  //everythin in flutter is a widget and a widget is a component
  runApp(MyApp());
}

//stateless widget is soomething that is not supposed to change

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
