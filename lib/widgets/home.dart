import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weddy/widgets/Custom_horizontalList%20_noIndicator.dart';

import 'side_drawer.dart';
import 'custom_horizontal_list.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController userController = TextEditingController();
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 40,
            )),
        automaticallyImplyLeading: false,
        actions: [],
        leadingWidth: 50,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 50,
        ),
      ),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).padding.top / 1),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hello, User Name",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset(
                  "assets/weddy.png",
                  fit: BoxFit.fill,
                  height: 100,
                  width: 150,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                AnimSearchBar(
                    helpText: "Search...",
                    width: 290,
                    textController: textController,
                    onSuffixTap: () {
                      setState(() {
                        textController.clear();
                      });
                    }),
                    IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_rounded,color: Colors.deepPurple,))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25),
                child: Text("Recommendations",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            SizedBox(
              height: 10,
            ),
            // CarouselWithIndicatorDemo(),
            CarouselDemo(),
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25),
                child: Text("Wedding Halls",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            SizedBox(
              height: 10,
            ),
            CarouselWithIndicatorDemo(),
          ],
        ),
      ),
    );
  }
}
