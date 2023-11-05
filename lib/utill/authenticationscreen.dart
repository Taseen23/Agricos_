import 'package:agricos/utill/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthenticateScreen extends StatefulWidget {






  const AuthenticateScreen({super.key, required phoneNumber});

  @override
  AuthenticateScreenState createState() => AuthenticateScreenState();
}

class AuthenticateScreenState extends State<AuthenticateScreen> {
  late final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    var code="";
    return Material(
        child: SingleChildScrollView(
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
                    Navigator.pushNamed(context, MyRoutes.signupscreen);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFFFF)
                  ),
                ),
                //  Icon(Icons.arrow_circle_left),

                Image.asset(
                  "assest/Images/JAGO_KISAN-removebg-preview copy.png",
                  height: 316,
                  width: 250,

                  //width: 354,
                ),
              ]),
              SizedBox(
                height: 20.0,
              ),
              /*

              Image.asset(
                "assest/Images/JAGO_KISAN-removebg-preview copy.png",
                height: 316,
                width: 354,
              ),

               */

              Positioned(
                top: 10, // Adjust the top and left values to position the text
                left: 10,
                child: Text(
                  "Verify Phone",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Text("Code Sent to 01716813243",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 62,
                    height: 59,
                    child: TextFormField
                    //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
                      (
                      //controller: _firstnameController,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF000000)),
                            //border: 1px solid #

                            /*
                enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            Color(0xFF31F920)

               */
                            borderRadius: BorderRadius.circular(16)),

                        // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 62,
                    height: 59,
                    child: TextFormField
                    //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
                      (
                      //controller: _firstnameController,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 62,
                    height: 59,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 62,
                    height: 59,
                    child: TextFormField
                    //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
                      (
                      //controller: _firstnameController,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                ],
              ),
              Pinput(
                length: 6,
                showCursor: true,
                onChanged: (value){
                  code=value;
                }
              ),

              SizedBox(
                height: 40,
              ),


              Text("Don't Receive code? ",style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
              ),
              Text("Request again Get via Call",style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 338,
                height: 42,
                child: ElevatedButton(
                  onPressed: () async {
                    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: AuthenticateScreen.verify, smsCode: code);
                   // await auth.signInWithCredential(credential);

                    Navigator.pushNamed(context, MyRoutes.farmingcreen);
                  },
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF16FC02),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),

              //Text("Farming Details"),
            ])));
  }
}
