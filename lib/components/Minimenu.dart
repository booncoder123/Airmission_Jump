import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Minimenu extends StatelessWidget {
  final IconData icon;
  final String title;

  Minimenu({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color(0xffADEDEA)),
            child: Icon(icon),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(title),
        )
      ],
    );
  }
}
