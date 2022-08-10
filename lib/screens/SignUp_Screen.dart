import 'package:flutter/material.dart';
import 'package:weddy/screens/Confirmation_Screen.dart';
import 'package:weddy/screens/Signin_Screen.dart';
import 'package:weddy/widgets/custom_form_input.dart';
import 'package:weddy/widgets/custombutton.dart';

class SignUpScreen extends StatefulWidget {
  static const routename = "/SignupScreen";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

void navigateToConfirmation(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ConfirmationScreen.routename);
  }

void navigateToSignin(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SigninScreen.routename);
  }


  @override
  Widget build(BuildContext context) {
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
            children: [
              Container(
                  child: Image.asset("assets/weddy.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(child: CustomFormInput(text: "Name",icon: Icon(Icons.person,color: Colors.deepPurpleAccent,),toptext: "Name",)),
            SizedBox(
              height: 30,
            ),
            Container(child: CustomFormInput(text: "Email",icon: Icon(Icons.alternate_email,color: Colors.deepPurpleAccent),toptext: "Email",)),
            SizedBox(
              height: 30,
            ),
            Container(child: CustomFormInput(text: "Phone Number",icon: Icon(Icons.phone,color: Colors.deepPurpleAccent,),toptext: "Phone Number",)),
            SizedBox(
              height: 30,
            ),
            Container(child: CustomFormInput(text: "Password",icon: Icon(Icons.lock,color: Colors.deepPurpleAccent,),toptext: "Password",)),
            SizedBox(
              height: 30,
            ),
            Container(child: CustomFormInput(text: "Confirm Password",icon: Icon(Icons.lock,color: Colors.deepPurpleAccent,),toptext: "Confirm Password",)),
            SizedBox(
              height: 60,
            ),
            CustomButton(
              backcolor: Colors.deepPurple,
              text: "Register",
             textStyle:
                            TextStyle(color: Colors.white, fontSize: 18),
              onPressed: () =>navigateToConfirmation(context),
               width: MediaQuery.of(context).size.width-20,
                        height: 60),
                        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
               style: TextStyle(fontSize: 18),
              ),
              TextButton(
                  onPressed: () =>navigateToSignin(context),
                  child: Text(
                    "Sign in",
                   style: TextStyle(color: Colors.deepPurple,fontSize: 17),
                  ))
            ],
          )
            ],
          ),
        ),
      ),
    );
  }
}
