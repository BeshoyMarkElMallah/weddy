import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

class CustomFormInput extends StatefulWidget {
  final TextEditingController _controller = TextEditingController();
  final String text;
  final Widget icon;
  final String toptext;
  CustomFormInput({
    @required this.text,
    this.toptext,
    this.icon,
  });

  @override
  _CustomFormInputState createState() => _CustomFormInputState();
}

class _CustomFormInputState extends State<CustomFormInput> {
  @override
  void dispose() {
    widget._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: display.width*0.05),
      // decoration: BoxDecoration(
      //     //border: Border.all(color: Colors.grey, width: 1.5),
      //     // borderRadius: BorderRadius.circular(50),
      //     ),
      child: TextField(
        cursorColor: Colors.deepPurple,
        textAlign: TextAlign.left,
        style: TextStyle(),
        controller: widget._controller,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple)),
          prefixIcon: widget.icon,
          hintText: widget.text,
          labelText: widget.toptext,
          labelStyle: TextStyle(color: Colors.black,fontSize: 20),
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
