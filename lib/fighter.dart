import 'package:flutter/material.dart';
import 'dart:math';

class FighterModel {
  FighterModel({this.name, this.powerLevel});
  String name;
  int powerLevel = 0;
}

class Fighter extends StatefulWidget {
  Fighter(this.fighter, {Key key}) : super(key: key);

  final FighterModel fighter;

  @override
  _FighterState createState() => new _FighterState();
}

class _FighterState extends State<Fighter> {
  void _decrementCounter() {
    setState(() {
      widget.fighter.powerLevel = max(0, widget.fighter.powerLevel - 3000);
    });
  }

  void _incrementCounter() {
    setState(() {
      widget.fighter.powerLevel += 1234;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String name = widget.fighter.name;
    final int powerLevel = widget.fighter.powerLevel;
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(
          name,
          style: new TextStyle(
            color: Colors.red,
            fontSize: 18.0,
          ),
        ),
        new Text(
          (powerLevel > 9000) ? 'It\'s over nine thousaaands!' : 'Pathetic.'
        ),
        new Text(
          '$powerLevel',
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
