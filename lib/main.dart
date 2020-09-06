import 'package:flutter/material.dart';

void main() {
  //runApp takes a Widget app(is low level) /materialApp /cuppertino for ios
  //everythin in flutter is a widget and a widget is a component
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  ));
}

//stateless widget is soomething that is not supposed to change
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
        
      ),
      body: Container(
        child: Text('Hello fluter'),
      ),
    );
  }
}
