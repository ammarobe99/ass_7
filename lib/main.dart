import 'package:flutter/material.dart';
import 'package:myapp/secreen_one.dart';
//import 'package:myapp/secreen_tow.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home_Page();
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://th.bing.com/th/id/R.f92dd7040a5c04f5c65789385d29bbf9?rik=4l6mdhGA1CsZKA&pid=ImgRaw&r=0"))),
        child: ListView(children: [
          Center(
            child: Container(
              child: Card(
                  child: Text(
                    "Welcome to car store app",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.amber),
            ),
          ),
          Divider(
            height: 200,
          ),
          ElevatedButton.icon(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Secreen_one();
                  }));
                });
              }),
              icon: Icon(Icons.car_crash),
              label: Text("Your prefrence page")),
        ]),
      ),
    );
  }
}
