//
// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// import 'HomePage.dart';
// import 'bus_lists.dart';
//
// class MapSample2 extends StatefulWidget {
//   @override
//   State<MapSample2> createState() => MapSample2State();
// }
//
// class MapSample2State extends State<MapSample2> {
//   Completer<GoogleMapController> _controller = Completer();
//
//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//
//   Color _colorFromHex(String hexColor) {
//     final hexCode = hexColor.replaceAll('#', '');
//     return Color(int.parse('FF$hexCode', radix: 16));
//   }
//
//
//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: Stack(
//         children: [
//          GoogleMap(
//             mapType: MapType.normal,
//             initialCameraPosition: _kGooglePlex,
//             onMapCreated: (GoogleMapController controller) {
//               _controller.complete(controller);
//             },
//           ),
//           Stack(
//             children: <Widget>[
//               Positioned(
//                 top: 60,
//                 child: Container(
//                   width: 300,
//                   height: 180,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(40),
//                         bottomRight: Radius.circular(40),
//                       ),
//                       color: Colors.blueGrey.withOpacity(0.5)),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 20,
//                       )
//                       ,
//                       Text("14:00",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 80
//                         ),),
//                       Text("AFTERNOON")
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//             top: 620,
//             left: 80,
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   width: 240,
//                   height: 240,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: _colorFromHex("#ECF0F3")),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 590,
//             left: 170,
//             child: InkWell(
//               onTap: () {
//                 print("Home");
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HomePage())
//                 );
//               },
//               child: Container(
//                 width: 70,
//                 height: 70,
//                 decoration:
//                 BoxDecoration(shape: BoxShape.circle, color:  _colorFromHex('#FFFFFF')),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration:
//                     BoxDecoration(shape: BoxShape.circle, color: _colorFromHex('#193566')),
//                     child: Icon(
//                       Icons.home_rounded,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 660,
//             left: 70,
//             child: InkWell(
//               child: Container(
//                 width: 60,
//                 height: 60,
//                 decoration:
//                 BoxDecoration(shape: BoxShape.circle, color:  _colorFromHex('#FFFFFF')),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration:
//                     BoxDecoration(shape: BoxShape.circle, color: _colorFromHex('#193566')),
//                     child: Icon(
//                       Icons.directions_bus,
//                       color: Colors.white,
//                     )
//                   ),
//                 ),
//               ),
//               onTap: () {
//                 print("BUss");
//                 Navigator.pushNamed(context, '/second');
//               },
//             ),
//           ),
//           Positioned(
//             top: 660,
//             left: 270,
//             child: InkWell(
//               child: Container(
//                 width: 60,
//                 height: 60,
//                 decoration:
//                 BoxDecoration(shape: BoxShape.circle, color:  _colorFromHex('#FFFFFF')),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration:
//                     BoxDecoration(shape: BoxShape.circle, color: _colorFromHex('#193566')),
//                     child: Icon(
//                       Icons.dehaze,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               onTap: () {
//                 print("Tapped");
//               },
//             ),
//           ),
//           Positioned(
//             top: 690,
//             left: 175,
//             child: Text(
//               "HOME",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//             ),
//           ),
//
//           Positioned(
//             top: 20,
//             left: 340,
//
//             child: Container(
//               width: 70,
//               height: 70,
//               decoration: BoxDecoration(
//                 image:DecorationImage(
//                   image: AssetImage('assets/images/cloudy.png')
//                 )
//               ),
//             ),
//           )
//
//
//
//
//
//         ],
//
//       ),
//
//
//     );
//   }
//
//
// }