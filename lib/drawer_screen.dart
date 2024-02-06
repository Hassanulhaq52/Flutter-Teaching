import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Drawer Screen'),),
       drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Asset Image'),
                trailing: Image.asset('images/banner.jpg'),
                // trailing: Image.network(src),
                onTap: () {
                  // Add navigation logic here
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Network Image'),
                trailing: Image.network('https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg'),
                onTap: () {
                  // Add navigation logic here
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
// body: ,
    );
  }
}
