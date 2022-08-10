import 'package:flutter/material.dart';
import 'package:weddy/widgets/CustomCardGroup.dart';

class GroupBuyingScreen extends StatefulWidget {
  static const routeName = "/GroupBuyingScreen";
  @override
  _GroupBuyingScreenState createState() => _GroupBuyingScreenState();
}

class _GroupBuyingScreenState extends State<GroupBuyingScreen> {
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
            "Group Buying",
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
              CustomCardGroup(
                  picture:
                      "https://www.lg.com/in/images/washing-machines/md07518535/gallery/FHV1408ZWB-Washing-Machines-Left-View-Open-D-07.jpg",
                  title: "Washing Machine",
                  description:
                      "We can give an additional discount for \n40 orders"),
                      CustomCardGroup(
                  picture:
                      "https://cdn.vox-cdn.com/thumbor/zqkL8BdRaioCsG5lKlfklA34pcI=/0x0:1038x628/1200x800/filters:focal(436x231:602x397)/cdn.vox-cdn.com/uploads/chorus_image/image/70182346/Screenshot_2021_11_27_131252.5.jpg",
                  title: "Television",
                  description:
                      "We can give an additional discount for \n25 orders"),
                      CustomCardGroup(
                  picture:
                      "https://imgix.bustle.com/uploads/image/2020/8/21/7bed63d4-bf12-411e-bfdd-74631b6e462e-best-compact-microwaves.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg",
                  title: "MicroWave",
                  description:
                      "We can give an additional discount for \n20 orders")
            ],
          ),
        ),
      ),
    );
  }
}
