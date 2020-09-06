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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          //color: Colors.purple, - we use decoration instead
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.pink,
            //shape: BoxShape.circle, //wraps the container in a circle like format
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.yellow,
            ]),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              )
            ]

          ),
          alignment: Alignment.center, //align text at the center of the container/div
          child: Text("I am a box", textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          
          ),),
        
        ),
      ),
    );
  }
}
