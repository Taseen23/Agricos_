import 'package:agricos/utill/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class crops extends StatefulWidget {
  const crops({super.key});

  @override
  State<crops> createState() => cropsState();
}

class cropsState extends State<crops> {
  searchUser(String experts) async {
    //  QuerySnapshot querySnapshot = await DatabaseMetgods().getthisInfo(name);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(children: [
        Container(
            child: Column(children: [
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

            Image.asset(
              "assest/Images/JAGO_KISAN-removebg-preview copy.png",
              height: 316,
              width: 250,

              //width: 354,
            ),
          ]),
        ])),
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
        Container(
          child:
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
                // color: Colors.teal[100],
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.orgsnicfood);
                  },
                  child: Text("Organic Food"),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white70),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 10,
                      )
                    ])),
            Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 50,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                // color: Colors.teal[100],
                child: const Text("Rice"),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white70),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 10,
                      )
                    ])),
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child:
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
                // color: Colors.teal[100],
                child: const Text("Vagetables"),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white70),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 10,
                      )
                    ])),
            Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 47,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                // color: Colors.teal[100],
                child: const Text("Water"),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white70),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 10,
                      )
                    ])),
          ]),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                // color: Colors.teal[100],
                child: const Text("Soil"),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white70),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 10,
                      )
                    ])),
          ]),
        ),
        /*
        const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        Container(
          width: 100,
          height: 100,
          //color: Colors.white,
          child: Text("taseen"),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
               // width: 1,
                //color: Colors.white70
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white70,
                  blurRadius: 11,
                  spreadRadius: 15,

                )
              ]

            )
        )
        */
      ]),
    ));
  }
}
