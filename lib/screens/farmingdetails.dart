import 'package:agricos/Function/database.dart';
import 'package:agricos/utill/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FarmdScreen extends StatefulWidget {
  const FarmdScreen({super.key});

  @override
  FarmdScreenState createState() => FarmdScreenState();
}

class FarmdScreenState extends State<FarmdScreen> {
  uploadData() async {
    Map<String, dynamic> uploaddata = {
      "Crop Type": croptypecontroller.text,
      "Soil Type": soiltypecontroller.text,
      "Climate": cliamtetypecontroller.text,
      "Farm Size and Layout": farmsizeandlayoutcontroller.text,
      "Past and disease": pastanddeassecontroller.text,
      "Farming equipment": farmingequipmentcontroller.text,
      "Economic information": econoinfocontroller.text,
    };
    DatabaseMetgods().addFarmerDetails(uploaddata);
  }

  TextEditingController croptypecontroller = new TextEditingController();
  TextEditingController soiltypecontroller = new TextEditingController();
  TextEditingController cliamtetypecontroller = new TextEditingController();
  TextEditingController farmsizeandlayoutcontroller = new TextEditingController();
  TextEditingController pastanddeassecontroller = new TextEditingController();
  TextEditingController farmingequipmentcontroller = new TextEditingController();
  TextEditingController econoinfocontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Image.asset("assest/Images/1.jpeg",
          height: 150,
        ),
        Container(
            child: Column(
          children: [


              Image.asset(
                "assest/Images/logo.jpeg",
                height: 200,
                width: 150,

                //width: 354,
              ),


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


            //Text("Farming Details"),
            )],
        )),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: croptypecontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
                  borderRadius: BorderRadius.circular(26)),
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
            controller: soiltypecontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
            controller: cliamtetypecontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
            controller: farmsizeandlayoutcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
              controller: pastanddeassecontroller,
            //obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
              controller: farmingequipmentcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
              controller:econoinfocontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF31F920)),
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
                Navigator.pushNamed(context, MyRoutes.dashboard);
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
