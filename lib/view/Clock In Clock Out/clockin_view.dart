import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';
import 'package:intl/intl.dart';

class ClockIn extends StatefulWidget {
  @override
  _ClockInState createState() => _ClockInState();
}

class _ClockInState extends State<ClockIn> {
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  child: Center(child: Text("Logo")),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Jadwal Kerja",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFC4C4C4),
                      ),
                    ),
                    Text(
                      "08:00 - 17:00",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 16,
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
              Text(
                DateFormat.Hm().format(DateTime.now()),
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 64,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFF767676),
                ),
              ),
              Text(
                Waktu(DateTime.now()).format('EEEE, d MMM y'),
                // DateFormat('EEEE, d MMM y', "id_ID").format(DateTime.now()),
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFF767676),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.05),
            child: Column(
              children: [
                Container(
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
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/clock_out');
                    },
                    // lokasi tidak sama dengan lokasi perusahaan dimisalkan dengan long press
                    onLongPress: () {
                      Navigator.pushReplacementNamed(context, '/wfh');
                    },
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
                  padding: const EdgeInsets.all(30.0),
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
