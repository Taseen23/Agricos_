import 'package:agricos/utill/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'done.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {


  TextEditingController _codecontroller = new TextEditingController();
  String phoneNumber = "",
      data = "";
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String smscode = "";

  _signInWithMobileNumber() async {
    UserCredential _credential;
    User user;
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: '+91' + data.trim(),
          verificationCompleted: (PhoneAuthCredential authCredential) async {
            await _auth.signInWithCredential(authCredential).then((value) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Done()));
            });
          },
          verificationFailed: ((error) {
            print(error);
          }),
          codeSent: (String verificationId, [int? forceResendingToken]) {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) =>
                    AlertDialog(
                      title: Text("Enter OTP"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller: _codecontroller,
                          )
                        ],
                      ),

                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              FirebaseAuth auth = FirebaseAuth.instance;
                              smscode = _codecontroller.text;
                              PhoneAuthCredential _credential =
                              PhoneAuthProvider.credential(
                                  verificationId: verificationId,
                                  smsCode: smscode);
                              auth
                                  .signInWithCredential(_credential)
                                  .then((result) {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Done()));
                              }).catchError((e) {
                                print(e);
                              });
                            },
                            child: Text("Done"))
                      ],
                    ));
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            verificationId = verificationId;
          },
          timeout: Duration(seconds: 45));
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
            ),

            Container(
              child: Text(
                "Create Account!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            //SizedBox(height: 200.0,),

            //Padding(padding: const EdgeInsets.all(20.0),),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 32.0, vertical: 16.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField
              //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
                (
                //controller: _firstnameController,

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF31F920)),

                      /*
                enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            Color(0xFF31F920)

               */
                      borderRadius: BorderRadius.circular(26)),

                  // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),

                  hintText: "Enter Full Name",
                  labelText: "Full Name",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(

                //controller: _lastnameController,
                decoration: InputDecoration(
                  //Icon(Icons.account_circle) ,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF31F920)),

                      /*
                enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            Color(0xFF31F920)

               */
                      borderRadius: BorderRadius.circular(26)),
                  hintText: "Enter Email-Adress",
                  labelText: "Email Adress",

                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //controller: _emailController,
                /* onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                }, */
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF31F920)),

                      /*
                enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            Color(0xFF31F920)

               */
                      borderRadius: BorderRadius.circular(26)),
                  hintText: "Enter Phone Number",
                  labelText: "Phone Number",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                // controller: _passwordController,
                /*  onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },

               */
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF31F920)),

                      /*
                enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            Color(0xFF31F920)

               */
                      borderRadius: BorderRadius.circular(26)),
                  hintText: "Enter New Password",
                  labelText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                // controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF31F920)),

                      /*
                enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            Color(0xFF31F920)

               */
                      borderRadius: BorderRadius.circular(26)),
                  hintText: "Enter Confirm Password",
                  labelText: "Confirm Password",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            SizedBox(
              height: 40,
              child: Container(
                width: 320,
                height: 41,
                child: ElevatedButton(
                  //  onPressed: signup
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.authentication);
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(

                      backgroundColor: Color(0xFF16FC02),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),
          ],
        ));
  }
}


