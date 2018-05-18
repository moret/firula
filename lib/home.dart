import 'package:flutter/material.dart';
import 'stage.dart';
import 'meme.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Firula Counter'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Stage(),
          new FlatButton(
            child: new Text(
              'What is this? Is this a meme?'
            ),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Meme())
              );
            },
          )
        ],
      ),
    );
  }
}
