import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Minimenu extends StatefulWidget {
  final IconData icon;
  final String title;
  final double widthBox;
  final double heightBox;
  final int boxColor;
  final Function onClick;


  Minimenu({required this.icon, required this.title, required this.widthBox, required this.heightBox,required this.boxColor,required this.onClick});

  @override
  _MinimenuState createState() => _MinimenuState();
}

class _MinimenuState extends State<Minimenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            widget.onClick();
          },
          child: Container(
            width: widget.widthBox,
            height: widget.heightBox,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color(widget.boxColor)),
            child: Icon(widget.icon),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 10),
        //   child: Text(title),
        // )
      ],
    );
  }
}
