//import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class DatabaseMetgods {
  String? downloadURL;

  Future addUserDetails(Map<String, dynamic> userinfoMap) async {
    return await FirebaseFirestore.instance
        .collection("Users")
        .doc()
        .set(userinfoMap);

  }
  Future addFarmerDetails(Map<String, dynamic> userinfoMap) async {
    return await FirebaseFirestore.instance
        .collection("Farmer Details")
        .doc()
        .set(userinfoMap);

  }


}


class FirebaseAuthService{
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> signUpWithEmailAndPassword(String email, String password)async{
    try{
      UserCredential credential=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch(e){
      print("Some error occured");
    }
    return null;

  }

  Future<User?> signInWithEmailAndPassword(String email, String password)async{
    try{
      UserCredential credential=await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch(e){
      print("Some error occured");
    }
    return null;

  }


}



