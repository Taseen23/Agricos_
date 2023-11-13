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
        ]))
      ]),
    ));
  }
}
