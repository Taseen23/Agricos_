import 'package:agricos/Function/theme.dart';
import 'package:agricos/Function/database.dart';
import 'package:agricos/utill/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
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
              Text("Search",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                height: 41,
                  width: 317,
                  child:
                  TextFormField(
                    //controller: _lastnameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),

                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF31F920)),
                          borderRadius: BorderRadius.circular(26)),
                     // hintText: "Enter Your Soil Type",
                      labelText: "Search",
                        suffixIcon: Icon(Icons.clear_rounded)
                    ),
                  ),
              )

        ]))
      ]),
    ));
  }
}
