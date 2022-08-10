import 'package:flutter/material.dart';
import 'package:weddy/screens/SignUp_Screen.dart';
import 'package:weddy/screens/home_page.dart';
import 'package:weddy/widgets/custom_form_input.dart';
import 'package:weddy/widgets/custombutton.dart';

class SigninScreen extends StatefulWidget {
  static const routename = "/SigninScreen";

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
void navigateToSignup(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SignUpScreen.routename);
  }

void navigateToHomePage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(HomePage.routeName);
  }



  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
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
            children: [
              Container(
                child: Image.asset("assets/weddy.png"),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                  child: CustomFormInput(
                text: "Enter Your email",
                toptext: "Email",
              )),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: CustomFormInput(
                text: "Enter password",
                toptext: "Password",
              )),
              SizedBox(
                height: 15,
              ),
              Container(
                width: display.width,
                margin: EdgeInsets.symmetric(horizontal: display.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Switch(
                        activeColor: Colors.deepPurple,
                        inactiveThumbColor: Colors.purple,
                        value: isRememberMe,
                        onChanged: (value) {
                          setState(() {
                            isRememberMe = value;
                          });
                        }),
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Remember Me",
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        )),
                    
                  ],
                  
                ),
                
              ),
              SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                        backcolor: Colors.deepPurple,
                        text: "Log in",
                        onPressed: () =>navigateToHomePage(context),
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 18),
                        width: MediaQuery.of(context).size.width-20,
                        height: 60),
                        SizedBox(height: 15,),
                        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
               style: TextStyle(fontSize: 18),
              ),
              TextButton(
                  onPressed: () =>navigateToSignup(context),
                  child: Text(
                    "Sign up",
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
