import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Secreen_one extends StatefulWidget {
  const Secreen_one({super.key});

  @override
  State<Secreen_one> createState() => _Secreen_oneState();
}

class _Secreen_oneState extends State<Secreen_one> {
  String car = "";
  bool car1 = false;
  bool car2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                opacity: 100,
                image: NetworkImage(
                    "https://th.bing.com/th/id/OIP.W11HVawkf4q0cGRHUMlXIgHaJv?pid=ImgDet&rs=1"))),
        child: ListView(children: [
          ElevatedButton(
            onPressed: (() {
              setState(() {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return Home_Page();
                }));
              });
            }),
            child: Text(
              "Back to home page",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.black),
          ),
          Center(
              child: Container(
            child: Card(
                child: Text(
                  "what you need to buy?",
                  style: TextStyle(fontSize: 25),
                ),
                color: Colors.white),
          )),
          Column(
            children: [
              Container(
                child: RadioListTile(
                    secondary: Icon(Icons.car_crash),
                    subtitle: Text("Bmw",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    title: Text("Germany",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    value: "germany",
                    groupValue: car,
                    onChanged: ((value) {
                      setState(() {
                        car = value.toString();
                      });
                    })),
              ),
              Container(
                child: RadioListTile(
                    secondary: Icon(Icons.car_crash),
                    subtitle: Text("Kia",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    title: Text("korea",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    value: "korea",
                    groupValue: car,
                    onChanged: ((value) {
                      setState(() {
                        car = value.toString();
                      });
                    })),
              ),
              Container(
                child: RadioListTile(
                    secondary: Icon(Icons.car_crash),
                    subtitle: Text("Gms",
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    title: Text(
                      "Usa",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    value: "Usa",
                    groupValue: car,
                    onChanged: ((value) {
                      setState(() {
                        car = value.toString();
                      });
                    })),
              )
            ],
          ),
          Column(
            children: [
              Card(
                child: Text(
                  "Type of Car engine",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              CheckboxListTile(
                  title: Text(
                    "petrol",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: car1,
                  onChanged: ((value) {
                    setState(() {
                      car1 = value!;
                    });
                  })),
              CheckboxListTile(
                  title: Text("Hybred",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  value: car2,
                  onChanged: ((value) {
                    setState(() {
                      car2 = value!;
                    });
                  }))
            ],
          ),
        ]),
      ),
    );
  }
}
