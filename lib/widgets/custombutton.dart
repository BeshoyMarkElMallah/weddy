import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backcolor;
  // final Color textcolor;
  final String text;
  final onPressed;
  final TextStyle textStyle;
  final double width;
  final double height;
  const CustomButton({
    @required this.backcolor,
    @required this.text,
    @required this.onPressed,
    @required this.textStyle,
    @required this.width,
    @required this.height
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(5),
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
          color: backcolor.withOpacity(0.85),
          width: width,
          height: height,
        ),
      ),
    );
  }
}
