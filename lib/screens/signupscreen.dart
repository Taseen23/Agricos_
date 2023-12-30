import 'package:agricos/utill/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Function/database.dart';
import 'authenticationscreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static String verify = "";

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {

  final FirebaseAuthService _auth = FirebaseAuthService() ;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  @override

  void dispose(){
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  void signup() async{
    String username= _usernameController.text;
    String email= _emailController.text;
    String password= _passwordController.text;
  //  String confirmpass = _confirmpasswordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);
    if (user!= null){
      print("User is successfully created");
      Navigator.pushNamed(context, MyRoutes.loginscreen);

    } else {
      print("Some error happened");
    }

  }

  static String verify = "";

  final TextEditingController phoneNumberController = TextEditingController();
  var phone = '';

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Image.asset(
          "assest/Images/1.jpeg",
          height: 150,
        ),
        Image.asset(
          "assest/Images/logo.jpeg",
          height: 100,
          width: 200,
        ),

        Text(
          "Create Account!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          width: 300,
          child: TextFormField
              //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
              (
            controller: _usernameController,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
            controller: _emailController,
            decoration: InputDecoration(
              //Icon(Icons.account_circle) ,
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              phone = value;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
          child: SizedBox(
            width: 320,
            height: 41,
            child: ElevatedButton(
              //  onPressed: signup
              onPressed: () async {
                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: '+88$phone',
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException e) {},
                  codeSent: (String verificationId, int? resendToken) async {
                    SignupScreen.verify = verificationId;

                    Navigator.pushNamed(context, MyRoutes.authentication,
                        arguments: phone);
                  },
                  timeout: const Duration(seconds: 25),
                  codeAutoRetrievalTimeout: (String verification) {},
                );
                signup();

              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF16FC02),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Text(
                "Next",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
