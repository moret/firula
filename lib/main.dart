import 'package:flutter/material.dart';
import 'fighter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Firula',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Firula Counter'),
        ),
        body: new Center(
          child: new Fighter(),
        ),
      ),
    );
  }
}
