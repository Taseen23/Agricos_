import 'package:agricos/utill/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Column(children: [
      Image.asset(
        "assest/Images/1.jpeg",
        height: 150,
      ),
      const Row(children: []),
      Image.asset(
        "assest/Images/logo.jpeg",
        height: 100,
        width: 200,
      ),
      Container(
        width: 312, // Set the width of the Container
        height: 422, // Set the height of the Container
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assest/Images/pic3.png'), // Replace with your image path
            //fit: BoxFit.cover, // You can adjust the fit property as needed
          ),
        ),
        child: Column(children: [
          Image.asset("assest/Images/Farmer image for profile 1.jpg"),
          SizedBox(
            width: 223.01,
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                hintText: "Enter Username",
                labelText: "Enter Your e-mail",
                labelStyle: TextStyle(
                  color: Colors.white, // Set the label text color to red
                ),
              ),
            ),
          ),
          SizedBox(
            width: 223.01,
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                icon: Icon(
                  Icons.key,
                  color: Colors.white,
                ),
                hintText: "Enter Password",
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.white, // Set the label text color to red
                ),
              ),
            ),
          ),
          SizedBox(
            //alignment: Alignment.topRight,
            width: 110,
            height: 18,
            child: Text(
              "Forget Password?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ), // default text style
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            height: 17,
            width: 86,
            child: Text(
              "or Sign in Using",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ), // default text style
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            SizedBox(
              width: 113,
            ),
            Image.asset(
              "assest/Images/facebook.jpg",
              width: 21,
              height: 20,
            ),
            SizedBox(
              width: 6,
            ),
            Image.asset(
              "assest/Images/Google.jpg",
              width: 21,
              height: 20,
            ),
            SizedBox(
              width: 6,
            ),
            Image.asset(
              "assest/Images/Tweeter.jpg",
              width: 21,
              height: 20,
            ),
          ])
        ]),
      ),
      SizedBox(
        width: 231,
        height: 49,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.signupscreen);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF16FC02),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 231,
        height: 49,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.signupscreen);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF16FC02),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 50,
      )
    ])));
  }
}
