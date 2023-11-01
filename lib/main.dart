import 'package:agricos/shared/constants.dart';
import 'package:agricos/signupscreen.dart';
import 'package:agricos/trigger.dart';
import 'package:agricos/utill/authenticationscreen.dart';
import 'package:agricos/utill/farmingdetails.dart';
import 'package:agricos/utill/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';

void main()  async{



  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  }

  else{
    await Firebase.initializeApp();
  }
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
        MyRoutes.authentication: (Context) => AuthenticateScreen(phoneNumber: "",),





      },
    );
  }
}
