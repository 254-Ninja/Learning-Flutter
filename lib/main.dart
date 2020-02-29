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
          CustomListTile(Icons.person,'Profile',()=>{}),
          CustomListTile(Icons.person,'Profile',()=>{}),
          CustomListTile(Icons.person,'Profile',()=>{}),
          CustomListTile(Icons.person,'Profile',()=>{}),

        ],
      ),
      ),
    );
  }

}

class CustomListTile extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon,this.text,this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: onTap,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,style: TextStyle(
                      fontSize: 16.0
                    ),),
                  ),
                ],
              ),
              Icon(Icons.arrow_right)

            ],
          ),
        ),
      ),
    );
  }

}