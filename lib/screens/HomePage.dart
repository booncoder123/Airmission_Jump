import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'bus_lists.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

class _HomePageState extends State<HomePage> {
  double height = 250;

  double updateState() {
    setState(() {
      height = 500;
    });
    return 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/homepage.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: Container(
                    width: 450,
                    height: 500,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 400),
                              width: 400,
                              height: height,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    top: 60,
                                    left: 20,
                                    child: InkWell(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/call.png')
                                          ),
                                            shape: BoxShape.circle,
                                            color: _colorFromHex('#96BFFF')
                                        ),
                                      ),
                                      onTap: () {
                                        updateState();
                                      },
                                    ),
                                  ),
                                  Positioned(
                                    top: 180,
                                    left: 20,
                                    child: Text(
                                      "NEXT BUS:",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                  Positioned(
                                    left: 220,
                                    top: 150,
                                    child: Text(
                                      "192",
                                      style: TextStyle(fontSize: 60),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 400),
                              width: 400,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    top: 60,
                                    left: 20,
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/call.png'),

                                        ),
                                          shape: BoxShape.circle,
                                          color: _colorFromHex('#FFCBA5')),
                                    ),
                                  ),
                                  Positioned(
                                    top: 180,
                                    left: 20,
                                    child: Text(
                                      "NEXT BUS:",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                  Positioned(
                                    left: 220,
                                    top: 150,
                                    child: Text(
                                      "192",
                                      style: TextStyle(fontSize: 60),
                                    ),
                                  ),
                                  Positioned(
                                    top: 15,
                                    left: 130,
                                    child: Container(
                                      width: 200,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/pro.png'),
                                          ),
                                          color: Colors.indigo,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  )
                                ],
                                overflow: Overflow.visible,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 710,
                  left: 80,
                  child: InkWell(

                    child: Container(

                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _colorFromHex('#FFFFFF')),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _colorFromHex('#193566')),
                          child:
                              Icon(Icons.directions_bus, color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/second');
                    },
                  ),
                ),
                Positioned(
                  top: 710,
                  left: 290,
                  child: InkWell(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _colorFromHex('#FFFFFF')),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _colorFromHex('#193566')),
                          child: Icon(
                            Icons.dehaze,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ),
                Positioned(
                  top: 740,
                  left: 190,
                  child: Text(
                    "CALL",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Positioned(
                  top: 630,
                  left: 180,
                  child: InkWell(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _colorFromHex('#FFFFFF')),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _colorFromHex('#193566')),
                          child: Icon(Icons.house_rounded, color: Colors.white, size: 50,),
                        ),
                      ),
                    ),
                    onTap: () {
                      print("Tapped");
                    },
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
