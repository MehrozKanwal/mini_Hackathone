import 'package:flutter/material.dart';
import 'home.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: 250,
            color: Colors.amber,
          ),
          Center(
            child: Container(
              // height: 150,
              // width: 150,
              // color: Colors.redAccent,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("click"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
