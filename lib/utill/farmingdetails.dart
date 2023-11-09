import 'package:agricos/utill/database.dart';
import 'package:agricos/utill/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FarmdScreen extends StatefulWidget {
  const FarmdScreen({super.key});

  @override
  FarmdScreenState createState() => FarmdScreenState();
}

class FarmdScreenState extends State<FarmdScreen> {
  uploadData()async{
    Map<String, dynamic> uploaddata={
      "Crop Type": croptype.text,
      "Soil Type" : soiltype.text,
      "Climate": cliamtetype.text,
      "Farm Size and Layout": farmsizeandlayout.text,
      "Past and disease" : pastanddeasse.text,
      "Farming equipment" : farmingequipment.text,
      "Economic information":econoinfo.text,



    };
    DatabaseMetgods().addUserDetails(uploaddata);
  }
  TextEditingController croptype = new TextEditingController();
  TextEditingController soiltype = new TextEditingController();
  TextEditingController cliamtetype = new TextEditingController();
  TextEditingController farmsizeandlayout = new TextEditingController();
  TextEditingController pastanddeasse = new TextEditingController();
  TextEditingController farmingequipment = new TextEditingController();
  TextEditingController econoinfo = new TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Container(
            child: Column(
          children: [
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
                  Navigator.pushNamed(context, MyRoutes.authentication);
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

            Positioned(
              top: 10,
              // Adjust the top and left values to position the text
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
        )),

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
          height: 40.0,
        ),

        SizedBox(
          height: 40,
          child: Container(
            width: 320,
            height: 41,
            // duration: Duration(seconds: 1),
            child: ElevatedButton(
              onPressed: () {
                uploadData();
                Navigator.pushNamed(context, MyRoutes.farmingcreen);
              },
              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF89EE51),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45))),
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    )));
  }
}
