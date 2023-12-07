import 'package:agricos/utill/routes.dart';

import 'package:flutter/material.dart';

class Crops extends StatefulWidget {
  const Crops({super.key});

  @override
  State<Crops> createState() => CropsState();
}

class CropsState extends State<Crops> {
  searchUser(String experts) async {
    //  QuerySnapshot querySnapshot = await DatabaseMetgods().getthisInfo(name);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(children: [
        Image.asset(
          "assest/Images/1.jpeg",
          height: 150,
        ),
        Column(children: [
          Row(children: [
            //width: 20,
            ElevatedButton.icon(
              icon: Icon(
                Icons.arrow_circle_left,
                color: Color(0xFF04FF2F),
                size: 30.0,
              ),
              label: Text(""),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.dashboard);
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFFFFF)),
            ),
            //  Icon(Icons.arrow_circle_left),
            SizedBox(
              width: 50,
            ),

            Image.asset(
              "assest/Images/logo.jpeg",
              height: 150,
              width: 150,

              //width: 354,
            ),
          ]),
        ]),
        Text(
          "Crops",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.white70),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 10,
                    )
                  ]),
              // color: Colors.teal[100],
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.orgsnicfood);
                },
                child: Text("Organic Food"),
              )),
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 50,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.white70),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 10,
                    )
                  ]),
              // color: Colors.teal[100],
              child: const Text("Rice")),
        ]),
        SizedBox(
          height: 30,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.white70),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 10,
                    )
                  ]),
              // color: Colors.teal[100],
              child: const Text("Vagetables")),
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 47,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.white70),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 10,
                    )
                  ]),
              // color: Colors.teal[100],
              child: const Text("Water")),
        ]),
        SizedBox(
          height: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.white70),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 10,
                    )
                  ]),
              // color: Colors.teal[100],
              child: const Text("Soil")),
        ]),
      ]),
    ));
  }
}
