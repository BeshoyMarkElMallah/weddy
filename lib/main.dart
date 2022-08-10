import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weddy/screens/CartScreen.dart';
import 'package:weddy/screens/CategoriesScreen.dart';
import 'package:weddy/screens/Confirmation_Screen.dart';
import 'package:weddy/screens/GroupBuyingScreen.dart';
import 'package:weddy/screens/SignUp_Screen.dart';
import 'package:weddy/screens/Signin_Screen.dart';
import 'package:weddy/screens/WeddingPlannerSScreen.dart';
import 'package:weddy/screens/home_page.dart';
import 'package:weddy/screens/profileScreen.dart';


import 'package:weddy/screens/splashScreen.dart';
import 'package:weddy/screens/startScreen.dart';


void main() {
  runApp(MyApp());
SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weddy",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.yellow),
      ),
      home:CustomSplashScreen(),
      
      
      routes: {
        StartScreen.routename:(ctx)=>StartScreen(),
        SigninScreen.routename:(ctx)=>SigninScreen(),
        SignUpScreen.routename:(ctx)=>SignUpScreen(),
        ConfirmationScreen.routename:(ctx)=>ConfirmationScreen(),
        HomePage.routeName:(ctx)=>HomePage(),
        ProfileScreen.routeName:(ctx)=>ProfileScreen(),
        CartScreen.routeName:(ctx)=>CartScreen(),
        CategoriesScreen.routeName:(ctx)=>CategoriesScreen(),
        WeddingPlannerScreen.routeName:(ctx)=>WeddingPlannerScreen(),
        GroupBuyingScreen.routeName:(ctx)=>GroupBuyingScreen(),
      },
    );
  }
}