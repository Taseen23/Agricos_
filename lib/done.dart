import 'package:agricos/utill/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  
  
  searchUser(String name)async{
    QuerySnapshot querySnapshot=await DatabaseMetgods().getthisUserInfo(name);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Done"),),
      //body: ,
    );
  }
}