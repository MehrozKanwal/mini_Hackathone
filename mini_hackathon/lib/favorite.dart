import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: Text(
          "User Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
              radius: 50,
            ),
          ),
          ListTile(
            title: Text("Email"),
            subtitle: Text("mehrozkanwal334@gmail.com"),
          ),
          ListTile(
            title: Text("Phone Number"),
            subtitle: Text("03413145364"),
          ),
          ListTile(
            title: Text("Date of Birth"),
            subtitle: Text("28-01-2000"),
          ),
          ListTile(
            title: Text("City"),
            subtitle: Text("Karachi"),
          )
        ],
      ),
    );
  }
}
