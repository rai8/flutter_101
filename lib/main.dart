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
          height: 100,
          width: 100,
          color: Colors.teal,
         
         
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Rytone Odhimabo"), 
              accountEmail: Text("hytonne@outlook.com"),
              /* currentAccountPicture: Image.network(
                "https://images.unsplash.com/photo-1457052002176-2d16a4f4a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                ), */
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1457052002176-2d16a4f4a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                ),
              ),
              ),
           /*  DrawerHeader(
              child: Text('Hi I am drawer'),
              decoration: BoxDecoration(
              color: Colors.green[200],
            ),), */
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Rhytonne Odhimabo"),
              subtitle: Text('Developer'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text('hytonne@outlook.com'),
              trailing: Icon(Icons.edit),
              onTap: (){},
            ),
          ],
        ),
      ), // that ka small menu bar on the top left
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.edit),
     // mini: true, //mkes the floating button smaller
      ),
    ); 
  }
}
