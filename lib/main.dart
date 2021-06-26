
import 'package:flutter/material.dart';
import 'package:joves_lectors/webview_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebViewContainer("https://jornades.joveslectors.cat"),
    );
  }
}

