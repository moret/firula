import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Firula',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new MyHomePage(title: 'Firula Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _powerLevel = 0;

  void _decrementCounter() {
    setState(() {
      _powerLevel -= 3000;
    });
  }

  void _incrementCounter() {
    setState(() {
      _powerLevel += 1234;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              (_powerLevel > 9000) ? 'It\'s over nine thousaaands!' : 'Pathetic.'
            ),
            new Text(
              '$_powerLevel',
              style: Theme.of(context).textTheme.display1,
            ),
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
      ),
    );
  }
}
