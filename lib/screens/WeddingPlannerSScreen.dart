import 'package:flutter/material.dart';
import 'package:weddy/widgets/CustomCardWedding.dart';

class WeddingPlannerScreen extends StatefulWidget {
  static const routeName = "/WeddingPlannerScreen";
  @override
  _WeddingPlannerScreenState createState() => _WeddingPlannerScreenState();
}

class _WeddingPlannerScreenState extends State<WeddingPlannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.deepPurple[300]])),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Wedding Planners",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomCardWedding(
                picture:
                    "https://cocoweddingvenues.co.uk/wp-content/uploads/2020/03/wedding-planning-tips-a-Q-and-A-with-wedding-planners-rebecca-goddard-photography-2.jpg",
                title: "Lorem Ipsum",
              ),
              CustomCardWedding(picture: "https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/11/1531739725banner.jpg", title: "Lorem Ipsum"),
               CustomCardWedding(picture: "https://decoratedme.com/wp-content/uploads/2020/12/How-to-Select-Your-Wedding-Planner.jpg", title: "Lorem Ipsum")
            ],
          ),
        ),
      ),
    );
  }
}
