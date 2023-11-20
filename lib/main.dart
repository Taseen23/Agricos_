import 'package:agricos/screens/dashboard/dashboard.dart';
import 'package:agricos/screens/dashboard/organicfood.dart';
import 'package:agricos/shared/constants.dart';
import 'package:agricos/screens/signupscreen.dart';
import 'package:agricos/screens/trigger.dart';
import 'package:agricos/screens/authenticationscreen.dart';
import 'package:agricos/screens/farmingdetails.dart';
import 'package:agricos/utill/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'done.dart';
import 'screens/dashboard/insidemycrops.dart';
import 'screens/loginscreen.dart';

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
        MyRoutes.done: (Context) => Done(),
        MyRoutes.dashboard: (Context) => DashBoard(),
        MyRoutes.insidedashboard: (Context) => crops(),
        MyRoutes.orgsnicfood: (Context) => OgFood(),







      },
    );
  }
}
