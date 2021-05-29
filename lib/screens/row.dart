import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class DetailsScreen extends StatelessWidget {
  Color color;
  String num;

  DetailsScreen({required this.color, required this.num});

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ROUTE INFO"),
        backgroundColor: color,
      ),
      backgroundColor: color,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 40),
        child: Container(
          width: 350,
          height: 600,
          decoration: BoxDecoration(
              color: _colorFromHex('#ECF0F3'),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue),
                        ),
                        onTap: () {
                          print(num);
                        },
                      ),
                    ),
                    Text(
                      num,
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 140,
                  ),
                  Container(
                    width: 200,
                    height: 2.5,
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.greenAccent)),
                      ),
                      Dash(
                          direction: Axis.vertical,
                          length: 70,
                          dashLength: 15,
                          dashColor: Colors.grey),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.greenAccent)),
                      ),
                      Dash(
                          direction: Axis.vertical,
                          length: 70,
                          dashLength: 15,
                          dashColor: Colors.grey),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.greenAccent)),
                      ),
                      Dash(
                          direction: Axis.vertical,
                          length: 70,
                          dashLength: 15,
                          dashColor: Colors.grey),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.greenAccent)),
                      ),
                      Dash(
                          direction: Axis.vertical,
                          length: 70,
                          dashLength: 15,
                          dashColor: Colors.grey),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.greenAccent)),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: <Widget>[
                      Text(
                        "Nusa Village",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "MIR Motor",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Siam Station",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Sly Village",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Panda Zoo",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
