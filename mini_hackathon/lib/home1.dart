import 'package:flutter/material.dart';
import 'package:mini_hackathon/favorite.dart';
import 'home.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  List lst = [34, 68, 79, 40];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite), color: Colors.red),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: Colors.red),
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          DrawerHeader(
              child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
              radius: 50,
            ),
            title: Text("User Profile"),
            subtitle: Text("mehrozkanwal334@gmail.com"),
          )),
          ListTile(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(Icons.logout),
            ),
            title: Text("Logout"),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
            title: Text("Cart"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Favourite()));
                },
                icon: Icon(Icons.favorite)),
            title: Text("Favourite"),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.info),
            ),
            title: Text("About"),
          )
        ],
      )),
      body: Column(
        children: [
          Row(),
          Expanded(
              child: ListView.builder(
                  itemCount: lst.length,
                  itemBuilder: (context, index) {
                    return product(lst[index]);
                  }))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget product(int name) {
  return Column(
    children: [
      ListTile(
        tileColor: Colors.grey,
        title: Text("$name"),
      )
    ],
  );
}
