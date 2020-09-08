import 'package:awesome_app/drawer.dart';
import 'package:awesome_app/pages/login_page.dart';
import 'package:awesome_app/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; //we use it to parse json- decode json

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* var myText = "Change my name !!!";
  TextEditingController _nameController = TextEditingController(); */

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  //defining the fetchData method
  fetchData() async {
    var res = await http.get(url);
    //print(res.body);
    data = jsonDecode(res.body);
    //print(data);
    //we use the set state to change the UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                //  Navigator.pop(context);
                Constants.prefs.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              })
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(), // that ka small menu bar on the top left
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*   myText = _nameController.text;
          setState(() {}); */
        },
        child: Icon(Icons.send),
        // mini: true, //mkes the floating button smaller
      ),
    );
  }
}
