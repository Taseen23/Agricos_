import 'package:agricos/screens/dashboard/dashboard.dart';
import 'package:agricos/screens/dashboard/organicfood.dart';
import 'package:agricos/shared/constants.dart';
import 'package:agricos/screens/signupscreen.dart';
import 'package:agricos/screens/authenticationscreen.dart';
import 'package:agricos/screens/farmingdetails.dart';
import 'package:agricos/utill/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Screens/dashboard/insidemycrops.dart';

import 'Screens/trigger.dart';
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
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: TriggerScreen(),
      routes: {


        MyRoutes.triggerpage: (context) => TriggerScreen(),
        MyRoutes.loginscreen: (context) => LoginScreen(),
        MyRoutes.signupscreen: (context) => SignupScreen(),
        MyRoutes.farmingcreen: (context) => FarmdScreen(),
        MyRoutes.authentication: (context) => AuthenticateScreen(phoneNumber: "",),
        MyRoutes.dashboard: (context) => DashBoard(),
        MyRoutes.insidedashboard: (context) => Crops(),
        MyRoutes.orgsnicfood: (context) => OgFood(),







      },
    );
  }
}
