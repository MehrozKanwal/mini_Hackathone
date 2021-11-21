import 'package:flutter/material.dart';
import 'package:mini_hackathon/home1.dart';

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
        backgroundColor: Colors.grey.shade400,
        title: Text(
          "Log In",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                child: Image(
              image: AssetImage('assets/2.png'),
              width: 150,
              height: 250,
            )),
            Container(
              width: 250,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Enter your name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                style: TextStyle(
                    color: Colors.blueAccent.shade400,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Enter your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                style: TextStyle(
                    color: Colors.blueAccent.shade400,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text("Login"),
            //   style: ButtonStyle(
            //     backgroundColor:
            //         MaterialStateProperty.all<Color>(Colors.teal.shade200),
            //   ),
            // ),
            Container(
                margin: const EdgeInsets.all(5),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home1()));
                  },
                  label: Text('Login'),
                  icon: Icon(Icons.login),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                )),
            Container(
              child: Text("Not have an account? Register."),
            )
          ],
        ),
      ),
    );
  }
}
