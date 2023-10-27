import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FarmdScreen extends StatefulWidget {
  const FarmdScreen({super.key});

  @override
  FarmdScreenState createState() => FarmdScreenState();
}

class FarmdScreenState extends State<FarmdScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          children: [
            Image.asset(
              "assest/Images/JAGO_KISAN-removebg-preview 1.jpg",
              height: 255,
              width: 250,

            ),


            Container(
              child: Text(
                "Farming Details",
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
                //controller: _firstnameController,

                decoration: InputDecoration(


                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF31F920)),

                      /*
                enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            Color(0xFF31F920)

               */
                      borderRadius: BorderRadius.circular(26)
                  ),

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
                // duration: Duration(seconds: 1),
                child: ElevatedButton(
                  //  onPressed: signup

                  onPressed: () {},
                  child: AnimatedContainer(
                    duration: Duration(seconds: 0),
                    height: 62.5,
                    width: 329,
                    alignment: Alignment.center,
                    child: Container(
                      height: 29,
                      width: 80,
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      //  Image.asset("assest/Images/arrow.jpg"),
                      //  child: Icon(Icons.arrow_back_outlined),

                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF16FC02),

                      //shape: BoxShape.rectangle,

                      //borderRadius: BorderRadius.circular(changebutton?50:8),
                    ),
                  ),

                  //child: Text('Next'),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff89EE51),

                    //Color(0xffeb6f1c),
                  ),

                  // decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.circular(30),
                  //   color: Color(0xFF16FC02),
                ),
              ),
            ),
          ],
        ));
  }
}
