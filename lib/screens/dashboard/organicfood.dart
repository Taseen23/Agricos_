import 'package:agricos/utill/routes.dart';

import 'package:flutter/material.dart';

class OgFood extends StatefulWidget {
  const OgFood({super.key});

  @override
  State<OgFood> createState() => OgFoodState();
}

class OgFoodState extends State<OgFood> {


  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assest/Images/1.jpeg",
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
            Navigator.pushNamed(context, MyRoutes.insidedashboard);
          },
          style:
          ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFFFFF)),
        ),
        //Icon(Icons.arrow_circle_left),
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
    ]


    ),));

  }
}