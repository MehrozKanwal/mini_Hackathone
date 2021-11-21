import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        backgroundColor: Color(0xff075e54),
        primaryColorLight: Color(0xff08d261),
      ),
      home: const MyHomePage(title: 'WhatsApp page'),
    );
  }
}
