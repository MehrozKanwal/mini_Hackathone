import 'package:flutter/material.dart';
import 'package:flutter2_class/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //   body: Column(children: [
      //     Container(
      //       height: 200,
      //       width: 200,
      //       child: Image.asset('assets/car.png'),
      //     )
      //   ]),
      // ));
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: RadialGradient(colors: const [
                  Colors.brown,
                  Colors.green,
                ]),
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 10,
                )),
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 30),
            child: Text("Hellow World"),
            height: 200,
            width: 200,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black,
                  width: 10,
                )),
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 30),
            child: Text("Heellow flutter"),
            height: 200,
            width: 200,
          ),
        ],
      ),
    ));
  }
}
