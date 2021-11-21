import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'splash.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Hellllow",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home1()));
              },
              child: Text(
                "click",
                style: TextStyle(fontSize: 15, color: Colors.red.shade500),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              )),
        ],
      ),
      body: Center(
        child: Container(
            // height: 150,
            // width: 150,
            // color: Colors.redAccent,

            ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.pink),
                child: Text("Drawer Header")),
            ListTile(
              title: Text("Item 1"),
              subtitle: Text("details"),
              leading: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home1()));
                },
                child: Text("click"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
