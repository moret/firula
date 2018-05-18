import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Meme extends StatelessWidget {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: 'https://www.youtube.com/watch?v=SiMHTK15Pik',
      appBar: new AppBar(
        title: new Text('Know your meme!'),
      ),
    );
  }
}
