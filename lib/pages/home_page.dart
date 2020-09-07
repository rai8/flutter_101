import 'package:awesome_app/drawer.dart';
import 'package:awesome_app/name_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change my name !!!";
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: NameCardWidget(myText: myText, nameController: _nameController),
          ),
        ),
      ),
      drawer: MyDrawer(), // that ka small menu bar on the top left
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.send),
        // mini: true, //mkes the floating button smaller
      ),
    );
  }
}
