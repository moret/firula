import 'package:flutter/material.dart';
import 'dart:math';

class Fighter extends StatefulWidget {
  Fighter({Key key, this.name}) : super(key: key);

  final String name;

  @override
  _FighterState createState() => new _FighterState();
}

class _FighterState extends State<Fighter> {
  int _powerLevel = 0;

  void _decrementCounter() {
    setState(() {
      _powerLevel = max(0, _powerLevel - 3000);
    });
  }

  void _incrementCounter() {
    setState(() {
      _powerLevel += 1234;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(
          widget.name,
          style: new TextStyle(
            color: Colors.red,
            fontSize: 18.0,
          ),
        ),
        new Text(
          (_powerLevel > 9000) ? 'It\'s over nine thousaaands!' : 'Pathetic.'
        ),
        new Text(
          '$_powerLevel',
          style: Theme.of(context).textTheme.display1,
        ),
        new Row(
          children: [
            new RaisedButton(
              child: new Text(
                '+'
              ),
              onPressed: _incrementCounter,
            ),
            new RaisedButton(
              child: new Text(
                '-'
              ),
              onPressed: _decrementCounter,
            ),
          ],
        ),
      ],
    );
  }
}
