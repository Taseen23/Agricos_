import 'package:agricos/utill/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      Image.asset(
        "assest/Images/JAGO_KISAN-removebg-preview 1.jpg",
        height: 255,
        width: 250,
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
          Container(
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
          Container(
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
          Container(
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
          Container(
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
          Image.asset(
            "assest/Images/facebook.jpg",
            width: 21,
            height: 20,
          ),
          Image.asset(
            "assest/Images/Google.jpg",
            width: 21,
            height: 20,
          ),
          Image.asset(
            "assest/Images/Tweeter.jpg",
            width: 21,
            height: 20,
          ),

        ]),

        /*
            child: ClipOval(
            child: Container(
              width: 129,
              height: 150,
                alignment: Alignment.topCenter,

                child:
                    TextFormField(

                    )

                //Image.asset("assest/Images/Farmer image for profile 1.jpg"),

            ),
          ),

             */
      ),
          Container(
            width: 231,
            height: 49,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.signupscreen);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 62.5,
                width: 329,
                alignment: Alignment.center,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF16FC02),


                  //shape: BoxShape.rectangle,

                  //borderRadius: BorderRadius.circular(changebutton?50:8),
                ),
              ),
              // onPressed: ,
            ),
          ),




      //Image.asset("assest/Images/pic3.png")
    ]));
  }
}
