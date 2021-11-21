import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> lst = [
      43,
      54,
      96,
      98,
      56,
      "Mehr",
      'H',
      43,
      54,
      96,
      98,
      56,
      "Mehr",
      'H',
      43,
      54,
      96,
      98,
      56,
      "Mehr",
      'H',
      43,
      54,
      96,
      98,
      56,
      "Mehr",
      'H',
      43,
      54,
      96,
      98,
      56,
      "Mehr",
      'H',
      43,
      54,
      96,
      98,
      56,
      "Mehr",
      'H',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              height: 150,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: lst.length,
                itemBuilder: (context, index) {
                  return abc(lst[index], context);
                })
          ],
        ),
      ),
    );
  }
}

Widget abc(dynamic name, context) {
  return Container(
    height: MediaQuery.of(context).size.height * .08,
    child: Column(
      children: [
        ListTile(
          tileColor: Colors.pinkAccent,
          title: Text("Mehroz $name"),
        )
      ],
    ),
  );
}
