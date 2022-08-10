import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:weddy/screens/home_page.dart';
import 'package:weddy/widgets/custombutton.dart';

class ConfirmationScreen extends StatefulWidget {
  static const routename = "/ConfirmationScreen";

  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {

void navigateToHomePage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(HomePage.routeName);
  }





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
                  width: display.width * 0.7,
                  height: display.height * 0.3,
                  child: Image.asset("assets/confirm.png"),
                ),
                OutlinedText(text:
                Text(
                  "Congratulations",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),strokes: [OutlinedTextStroke(color: Colors.purple, width: 3)],),
                Container(
                  width: display.width * 0.8,
                  padding: EdgeInsets.only(top: display.height * 0.02),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: OutlinedText(text:Text(
                      "Your Account is Ready to go",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),strokes: [OutlinedTextStroke(color: Colors.purple, width: 3)],),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: display.height * 0.1),
                  child: CustomButton(
                      backcolor: Colors.purple[800],
                      text: "Next",
                      textStyle: TextStyle(color: Colors.white, fontSize: 18),
                      onPressed: () =>navigateToHomePage(context),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 60),
                )
              ],
            ),
          )),
    );
  }
}
