import 'package:flutter/material.dart';

class CustomCardWedding extends StatefulWidget {
  final String picture;
  // final Widget button;
  // final String description;
  final String title;
  CustomCardWedding({
    @required this.picture,
    @required this.title,
  });

  @override
  _CustomCardWeddingState createState() => _CustomCardWeddingState();
}

class _CustomCardWeddingState extends State<CustomCardWedding> {
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
                    Icon(
                      Icons.settings,
                      size: 25,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    TextButton(
                        onPressed: () {
                          return showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                    title: Text("Customization"),
                                    content: TextFormField(decoration: InputDecoration.collapsed(hintText: "Enter your Customized Order Here....",),),
                                    actions: [FlatButton(onPressed: (){
                                      Navigator.of(ctx).pop();
                                    }, child: Text("Done"))],
                                  ));
                        },
                        child: Text(
                          "Customize",
                          style:
                              TextStyle(color: Colors.deepPurple, fontSize: 18),
                        ))
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "ST",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " ------",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
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
