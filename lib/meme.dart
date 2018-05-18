import 'package:flutter/material.dart';

class Meme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Know your meme!'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Text(
            'Know your memes, my friend!'
          ),
        ],
      ),
    );
  }
}
