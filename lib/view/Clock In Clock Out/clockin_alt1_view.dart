import 'dart:async';

import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

class ClockInAlt1 extends StatefulWidget {
  @override
  _ClockInAlt1State createState() => _ClockInAlt1State();
}

class _ClockInAlt1State extends State<ClockInAlt1> {
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 20,
          color: Color(0xFF767676),
        ),
        title: Text(
          "Clock In",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            color: Color(0xFF767676),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 85,
                  height: 36,
                  color: Color(0xFFc4c4c4),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      Waktu(DateTime.now()).format('EEEE, d MMM y'),
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFC4C4C4),
                      ),
                    ),
                    Text(
                      DateFormat.Hm().format(DateTime.now()),
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFE5E5E5),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GoogleMap(
                  markers: <Marker>{
                    Marker(
                      markerId: MarkerId("Test"),
                      position: LatLng(-6.245461374185754, 106.87431286845415),
                    ),
                    // Marker(
                    //   markerId: MarkerId("Test1"),
                    //   position: LatLng(-7.168783825002142, 112.6451451684592),
                    // ),
                  },
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                        -6.245461374185754, 106.87431286845415), // Waskita
                    // target: LatLng(-7.168783825002142, 112.6451451684592), // SISI
                    zoom: 16.151926040649414,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.place,
                      size: 20,
                      color: Color(0xFF767676),
                    ),
                    Text(
                      "Location : ",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                    Text(
                      "Kantor Pusat Waskita Precast Beton",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/clock_out_alt1');
            },
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xA08f4aff),
                      Color(0xFF4a7dff),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Color(0x807b7fff),
                      offset: Offset.zero,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fingerprint,
                    size: 55,
                    color: Colors.white,
                  ),
                  Text(
                    "Clock In",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.rotate_left,
                      color: Color(0xFF767676),
                      size: 17,
                    ),
                    Text(
                      DateFormat.Hm().format(DateTime.now()),
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                    Text(
                      "Clock In",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFc4c4c4),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.rotate_right,
                      color: Color(0xFF767676),
                      size: 17,
                    ),
                    Text(
                      "_ _ : _ _",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                    Text(
                      "Clock Out",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFc4c4c4),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Color(0xFF767676),
                      size: 17,
                    ),
                    Text(
                      "_ _:_ _",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                    Text(
                      "Working Hours",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFc4c4c4),
                      ),
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
