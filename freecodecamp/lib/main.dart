import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './drawer.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
{
  var Mytext= "Change my name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('New App')),
      body: Center(
        child: Column(children: <Widget>[
          Text(
            Mytext,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username Here",
                  labelText: "Username:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          )
        ]),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Mytext = _nameController.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.update),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
