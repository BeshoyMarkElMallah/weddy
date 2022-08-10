import 'package:flutter/material.dart';

class CustomCategory extends StatefulWidget {
  String picture;

  String categoryName;
  final void Function() onTap;

  CustomCategory({@required this.picture, @required this.categoryName,@required this.onTap});

  @override
  _CustomCategoryState createState() => _CustomCategoryState();
}

class _CustomCategoryState extends State<CustomCategory> {
  @override
  Widget build(BuildContext context) {
        var display = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(display.width * 0.02),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: widget.onTap,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            // margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.picture,
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                Container(
                  width: display.width * 0.6,
                  height: 100,
                  child: FittedBox(
                       fit: BoxFit.none,
                        child: Text(
                          widget.categoryName,
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
