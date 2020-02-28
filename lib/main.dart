import 'package:flutter/material.dart';

void main() {
  
  runApp(MaterialApp(
  title: 'Drawer App',
    home: HomeScreen(),
  ));

}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter maps'),
        backgroundColor: Colors.deepOrange,
      ),

      drawer: Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.orangeAccent,
                ])
              ),
              child: Text('This is drawer header')),
          ListTile(
            title: Text('Profile'),
          ),
          ListTile(
            title: Text('Trips'),
          ),
          ListTile(
            title: Text('Balance and payment'),
          ),
          ListTile(
            title: Text('Settings'),
          ),
          ListTile(
            title: Text('this is the title'),
          ),
          ListTile(
            title: Text('this is the title'),
          )

        ],
      ),
      ),
    );
  }

}

class CustomListTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(Icons.person)
        ],
      ),
    );
  }

}