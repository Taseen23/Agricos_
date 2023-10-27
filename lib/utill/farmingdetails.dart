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
        child:SingleChildScrollView( child: Column(
      children: [
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),

            Image.asset(
                "assest/Images/JAGO_KISAN-removebg-preview copy.png",
                height: 316,
                width: 354,
              ),

              Positioned(
                top: 10, // Adjust the top and left values to position the text
                left: 10,
                child: Text(
                  "Farming Details",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),



              //Text("Farming Details"),

          ],
        )



        ),

        Container(

          /*
          child: Text(
            "Farming Details",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

           */
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
                  borderRadius: BorderRadius.circular(26)),

              // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),

              hintText: "Enter Full Crop Type",
              labelText: "Crop Type",
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
              hintText: "Enter Your Soil Type",
              labelText: "Soil Type",
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
              hintText: "Enter Your Climate",
              labelText: "Climate",
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
              hintText: "Farm Size and Layout",
              labelText: "Farm Size and Layout",
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
              hintText: "Past and disease",
              labelText: "Past and disease",
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
              hintText: "Farming equipment",
              labelText: "Farming equipment",
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
              hintText: "Economic information",
              labelText: "Economic information",
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
                    "Submit",
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
        )
    )
    );
  }
}
