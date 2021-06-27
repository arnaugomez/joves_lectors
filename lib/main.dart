import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:joves_lectors/webview_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<void> initFirebaseMessaging() async {
    print(await FirebaseMessaging.instance.getInitialMessage());
    FirebaseMessaging.onMessage.listen((message) {
      if(message.notification != null) {
        print(message.notification.body);
        print(message.notification.title);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    print(FirebaseMessaging.instance.pluginConstants);
    print(FirebaseMessaging.instance.isSupported());
    initFirebaseMessaging();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Hello")//WebViewContainer("https://jornades.joveslectors.cat"),
    );
  }
}
