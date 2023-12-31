import 'package:agricos/utill/routes.dart';
import 'package:flutter/material.dart';

class TriggerScreen extends StatelessWidget {
  const TriggerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Image.asset("assest/Images/1.jpeg",
          height: 150,
        ),


        Text(
          'Welcome To',
          textAlign: TextAlign.center,
          //overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Color(0xFF0D5E06),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 1.0),
        Image.asset("assest/Images/logo.jpeg",
            //scale: 0.8,
            height: 150,
            width: 100),

        // Text("Welcome To"),

        Image.asset("assest/Images/pic2.jpg", height: 295, width: 411),
        SizedBox(height: 20.0),
        Container(
            alignment: Alignment.center,
            width: 352,
            height: 69,
            child: Text(
              "Without Agriculture  we \n can’t survive on this planet ",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D6F09),
              ),
            )),
        SizedBox(
          height: 62.5,
          width: 329,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.loginscreen);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF31F920), shape: RoundedRectangleBorder()),
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
