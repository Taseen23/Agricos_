import 'package:agricos/utill/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';


class AuthenticateScreen extends StatefulWidget {
  const AuthenticateScreen({super.key, required phoneNumber});

  @override
  AuthenticateScreenState createState() => AuthenticateScreenState();
}

class AuthenticateScreenState extends State<AuthenticateScreen> {
  late final String phoneNumber;

  @override
  Widget build(BuildContext context) {


    return Material(
        child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(
                "assest/Images/1.jpeg",
                height: 150,

                //width: 354,
              ),

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
        SizedBox(
          width: 30,
        ),
        //  Icon(Icons.arrow_circle_left),

        Image.asset(
          "assest/Images/logo.jpeg",
          height: 150,
          width: 200,

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

      SizedBox(
        width: 338,
        height: 42,
        child: ElevatedButton(
          onPressed: () async {
            try {
              // await auth.signInWithCredential(credential);

              Navigator.pushNamed(context, MyRoutes.loginscreen);
            } catch (e) {
              if (kDebugMode) {
                print("wrong otp");
              }
            }
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF16FC02),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: const Text(
            "Verify",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),

      //Text("Farming Details"),
    ])));
  }
}
