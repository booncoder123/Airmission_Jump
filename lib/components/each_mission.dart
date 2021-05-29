
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class each_mission extends StatelessWidget {
  final int number;

  each_mission({required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('assets/images/img$number.png')
                )
            ),

          ),
          Text(
            "Mission1",
            textAlign: TextAlign.left,
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          )
        ],
      ),
    );
  }
}
