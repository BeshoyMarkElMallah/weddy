import 'package:flutter/material.dart';


import 'package:weddy/screens/startScreen.dart';

class CustomSplashScreen extends StatelessWidget {
  Future<void> goToStartingPage(int sec, BuildContext ctx) {
    return Future.delayed(Duration(seconds: sec),
        () => Navigator.of(ctx).popAndPushNamed(StartScreen.routename));
  }

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    goToStartingPage(3, context);
    return Scaffold(
      body: Container(
        width: display.width,
        height: display.height,
        child: Image.asset(
          "assets/Splash.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
