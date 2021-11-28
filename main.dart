import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation/new_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.yellow,
        secondaryHeaderColor: Colors.pink,
      ),
      home: HomePage(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/a': (context) => const NewPage("NewPage"),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/b': (context) => const NewPage("NewPage"),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // void _close() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.ac_unit_rounded),
            Center(
              child: Text("Navigation Bar"),
            ),
          ],
        ),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
              accountName: Text("Pransh Prashar"),
              accountEmail: Text("praneshprashar25@gmail.com"),
              currentAccountPicture: CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(
                  'https://img.webnovel.com/bookcover/16169996206184805/600/600.jpg?coverUpdateTime=1582948223612',
                ),
                backgroundColor: Colors.black,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                    'https://img.webnovel.com/bookcover/16169996206184805/600/600.jpg?coverUpdateTime=1582948223612',
                  ),
                  backgroundColor: Colors.black,
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0)),
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                    'https://img.webnovel.com/bookcover/16169996206184805/600/600.jpg?coverUpdateTime=1582948223612',
                  ),
                  backgroundColor: Colors.black,
                ),
              ],
            ),
            ListTile(
              title: const Text("Page_One"),
              trailing: const Icon(Icons.facebook),
              onTap: () {
                // Navigate to the second screen using a named route.
                Navigator.pop(context);
                Navigator.pushNamed(context, '/a');
              },
            ),
            const Divider(),
            const ListTile(
              title: Text("Page_Two"),
              trailing: Icon(Icons.face),
            ),
            const Divider(),
            const ListTile(
              title: Text("Page_Three"),
              trailing: Icon(Icons.account_circle),
            ),
            const Divider(),
            const ListTile(
              title: Text("Page_Four"),
              trailing: Icon(Icons.backpack),
            ),
            const Divider(),
            const ListTile(
              title: Text("Page_Five"),
              trailing: Icon(Icons.cabin),
            ),
            const Divider(),
            const ListTile(
              title: Text("Page_Six"),
              trailing: Icon(Icons.dangerous_outlined),
            ),
            const Divider(),
            ListTile(
              title: Text("Exit"),
              trailing: Icon(Icons.close_fullscreen),
              onTap: () {
                Navigator.pop(context); // close the drawer
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Container(
            child: const Text("My Home Page"),
          ),
        ),
      ),
    );
  }
}
