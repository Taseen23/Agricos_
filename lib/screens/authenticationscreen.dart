import 'package:agricos/utill/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'signupscreen.dart';

class AuthenticateScreen extends StatefulWidget {
  const AuthenticateScreen({super.key, required phoneNumber});

  @override
  AuthenticateScreenState createState() => AuthenticateScreenState();
}

class AuthenticateScreenState extends State<AuthenticateScreen> {
  late final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code = "";
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
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFFFFF)),
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
      Text(
        "Code Sent to 01716813243",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Pinput(
            length: 6,
            //pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onChanged: (value) {
              code = value;
            },
          ),
        ],
      ),

      SizedBox(
        height: 40,
      ),

      Text(
        "Don't Receive code? ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black87,
        ),
      ),
      Text(
        "Request again Get via Call",
        style: TextStyle(
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
            try {
              PhoneAuthCredential credential = PhoneAuthProvider.credential(
                  verificationId: SignupScreen.verify, smsCode: code);
              // await auth.signInWithCredential(credential);

              Navigator.pushNamed(context, MyRoutes.farmingcreen);
            } catch (e) {
              print("wrong otp");
            }
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