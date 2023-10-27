import 'package:agricos/signupscreen.dart';
import 'package:agricos/trigger.dart';
import 'package:agricos/utill/authenticationscreen.dart';
import 'package:agricos/utill/farmingdetails.dart';
import 'package:agricos/utill/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: triggerScreen(),
      routes: {


        MyRoutes.triggerpage: (Context) => triggerScreen(),
        MyRoutes.loginscreen: (Context) => LoginScreen(),
        MyRoutes.signupscreen: (Context) => SignupScreen(),
        MyRoutes.farmingcreen: (Context) => FarmdScreen(),
        MyRoutes.authentication: (Context) => AuthenticateScreen(),






      },
    );
  }
}
