import 'package:flutter/material.dart';

class CustomCardGroup extends StatefulWidget {
  final String picture;
  // final Widget button;
  final String description;
  final String title;
  CustomCardGroup(
      {@required this.picture,
      @required this.title,
      @required this.description});

  @override
  _CustomCardGroupState createState() => _CustomCardGroupState();
}

class _CustomCardGroupState extends State<CustomCardGroup> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  widget.picture,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 10,
                child: Container(
                  width: 110,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                   "Price L.E",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 300,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    
                Text(widget.description,style: TextStyle(color: Colors.deepPurple,fontSize: 18),)
                    
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
