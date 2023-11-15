import 'package:agricos/utill/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => DashBoardState();
}

class DashBoardState extends State<DashBoard> {
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
                Navigator.pushNamed(context, MyRoutes.farmingcreen);
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
        Text("Dashboard",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(
          height: 20,
        ),
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                child: const Text("My Crops"),
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
                  horizontal: 40,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                // color: Colors.teal[100],
                child: const Text("Profiles"),
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
          height: 10,
        ),
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 33,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                // color: Colors.teal[100],
                child: const Text("Crop Doctor"),
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
                child: const Text("Seller"),
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
          height: 10,
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
                child: const Text("Farming Book"),
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
                  horizontal: 2,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                // color: Colors.teal[100],
                child: const Text("Transmission Lender"),
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
          height: 10,
        ),
        Container(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                child: const Text("Daza Refer"),
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
                  horizontal: 40,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                // color: Colors.teal[100],
                child: const Text("Calender"),
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
          height: 10,
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
                child: const Text("Contact Us"),
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
