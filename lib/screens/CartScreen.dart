import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static const routeName = "/CartScreen";
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/weddy.png",
                fit: BoxFit.fill,
               
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
