import 'package:flutter/material.dart';
import 'fighter.dart';

class Stage extends StatefulWidget {
  @override
  _StageState createState() => new _StageState();
}

class _StageState extends State<Stage> {
  final goku = new FighterModel(name: 'Goku', powerLevel: 0);
  final vegeta = new FighterModel(name: 'Vegeta', powerLevel: 0);
  FighterModel winner;

  void _fight() {
    setState(() {
      winner = goku.powerLevel > vegeta.powerLevel ? goku : vegeta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Fighter(goku),
            new Fighter(vegeta),
          ],
        ),
        new RaisedButton(
          child: new Text(
            'FIGHT!'
          ),
          onPressed: _fight,
        ),
        new Text(
          winner != null ? '${winner.name}' : 'Who will win?'          
        ),
      ],
    );
  }
}
