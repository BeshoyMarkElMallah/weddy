import 'package:flutter/material.dart';


import 'package:outlined_text/outlined_text.dart';



import 'package:weddy/screens/SignUp_Screen.dart';
import 'package:weddy/screens/Signin_Screen.dart';
import 'package:weddy/widgets/custombutton.dart';

class StartScreen extends StatefulWidget {
  static const routename = "/StartScreen";

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
void navigateToSignup(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SignUpScreen.routename);
  }

  void navigateToSignin(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SigninScreen.routename);
  }




  @override
  Widget build(BuildContext context) {
    var topPadding = MediaQuery.of(context).padding.top;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.deepPurple[300]])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset("assets/weddy.png"),
                padding: EdgeInsets.only(top: topPadding * 5),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: topPadding * 4, left: topPadding * 0.5),
                child: OutlinedText(
                  text: Text(
                    "Lorem Ipsum",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  strokes: [OutlinedTextStroke(color: Colors.purple, width: 3)],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: topPadding * 2, left: topPadding * 0.8),
                child: Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old",
                  style: TextStyle(color: Colors.grey[850], fontSize: 16),
                ),
              ),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    backcolor: Colors.deepPurple,
                    text: "Login",
                    onPressed: () =>navigateToSignin(context),
                    textStyle: TextStyle(color: Colors.white, fontSize: 18),
                    width: 150,
                    height: 50,
                  ),
                  CustomButton(
                    backcolor: Colors.white,
                    text: "Sign Up",
                    onPressed: () => navigateToSignup(context),
                    textStyle: TextStyle(color: Colors.deepPurple, fontSize: 18),
                    width: 150,
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
