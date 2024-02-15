import 'package:aplikasi_west/view/Attendance/attendance_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';
import 'package:intl/intl.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  DateTime _waktuSekarang = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff767676),
          ),
        ),
        // leadingWidth: 30,
        title: Text(
          "Attendance",
          style: TextStyle(
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF767676),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0xff767676),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    setState(() {
                      _waktuSekarang =
                          _waktuSekarang.subtract(Duration(days: 30));
                    });
                  },
                  color: Color(0xFF767676),
                  padding: EdgeInsets.zero,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 11.0),
                      child: Icon(
                        Icons.today,
                        color: Color(0xff767676),
                        size: 20,
                      ),
                    ),
                    Text(
                      Waktu(_waktuSekarang).format('MMMM y'),
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {
                    setState(() {
                      _waktuSekarang = _waktuSekarang.add(Duration(days: 30));
                    });
                  },
                  color: Color(0xFF767676),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 65,
                height: 14,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerRight),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: Color(0xFF767676),
                        size: 15,
                      ),
                      Text(
                        "Newest",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF767676),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i) => Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          if (i == 0) {
                            return AttendanceDetail("Absent");
                          } else if (i == 1) {
                            return AttendanceDetail("Cuti Tahunan");
                          } else if (i == 2) {
                            return AttendanceDetail("on time");
                          } else if (i == 3) {
                            return AttendanceDetail("late");
                          } else {
                            return AttendanceDetail("on time");
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        isScrollControlled: true,
                      );
                    },
                    height: 86,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          (31 - i).toString(),
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF767676),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              DateFormat.Hm()
                                  .format(DateTime(2022, 3, 10, 7, 50)),
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFF767676),
                              ),
                            ),
                            Text(
                              "Clock In",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFFc4c4c4),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              i == 4
                                  ? "_ _:_ _"
                                  : DateFormat.Hm().format(DateTime.now()),
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFF767676),
                              ),
                            ),
                            Text(
                              "Clock Out",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFFc4c4c4),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              i == 4 ? "_ _:_ _" : "08:00",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFF767676),
                              ),
                            ),
                            Text(
                              "Working Hours",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFFc4c4c4),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
