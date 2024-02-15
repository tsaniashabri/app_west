import 'package:aplikasi_west/view/Request/decline_popup.dart';
import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DetailRequest extends StatefulWidget {
  final String jenisRequest, status;
  DetailRequest(this.jenisRequest, this.status);
  @override
  _DetailRequestState createState() =>
      _DetailRequestState(jenisRequest, status);
}

class _DetailRequestState extends State<DetailRequest> {
  String jenisRequest, status;
  _DetailRequestState(this.jenisRequest, this.status);
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
        title: Text(
          "Detail Request",
          style: TextStyle(
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF767676),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.075,
        ),
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.all(26),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffe5e5e5),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 33),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(0, 1),
                            color: Color(0x1a000000),
                          )
                        ]),
                    child: new Icon(
                      jenisRequest == "Absen"
                          ? Icons.work_off
                          : Icons.event_note,
                      color: Color(0xff767676),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jenisRequest,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF767676),
                        ),
                      ),
                      Text(
                        jenisRequest == "Absen"
                            ? "ID Request : ABS-170121"
                            : "ID Request : CUT-170121",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF767676),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Detail Request",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: status == "In Progress"
                        ? Color(0xffff8800)
                        : status == "Approved"
                            ? Color(0xff51CE2C)
                            : Color(0xFFFF4A4A),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Requester",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Dimas Setyawan",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Approver",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Rudy Haryono",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Start",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  Waktu(DateTime(2021, 1, 17, 8)).format('d MMMM y') +
                      " at " +
                      Waktu(DateTime(2021, 1, 17, 8)).format('HH:mm'),
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "End",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  Waktu(DateTime(2021, 1, 17, 17)).format('d MMMM y') +
                      " at " +
                      Waktu(DateTime(2021, 1, 17, 17)).format('HH:mm'),
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Days",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "1",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Alasan",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  jenisRequest == "Cuti" ? "Cuti" : "Perjalanan Dinas",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18),
            margin: EdgeInsets.only(top: 10),
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xffe5e5e5), width: 1),
              ),
            ),
            child: Text(
              "Progress",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Color(0xFF767676),
              ),
            ),
          ),
          Column(
            children: [
              TimelineTile(
                afterLineStyle: LineStyle(color: Color(0xffc4c4c4)),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 40,
                  color: Color(0xffc4c4c4),
                  drawGap: true,
                  // iconStyle: IconStyle(iconData: IconData())
                  indicator: Icon(
                    Icons.check_circle_rounded,
                    color: Color(0xffc4c4c4),
                    size: 25,
                  ),
                ),
                isFirst: true,
                endChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Request Send",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF767676),
                      ),
                    ),
                    Text(
                      "16 Jan 2021 at 14:00",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFFc4c4c4),
                      ),
                    ),
                  ],
                ),
              ),
              TimelineTile(
                beforeLineStyle: LineStyle(color: Color(0xffc4c4c4)),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 40,
                  color: Color(0xffc4c4c4),
                  drawGap: true,
                  indicator: Icon(
                    status == "Approved" || status == "Canceled"
                        ? Icons.check_circle_rounded
                        : Icons.radio_button_checked,
                    color: Color(0xffc4c4c4),
                    size: 25,
                  ),
                ),
                isLast: true,
                endChild: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 44.0),
                  child: status == "Approved"
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Manager Approved",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF767676),
                              ),
                            ),
                            Text(
                              "16 Jan 2021 at 15:00",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFFc4c4c4),
                              ),
                            ),
                          ],
                        )
                      : status == "Canceled"
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Request Canceled",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xFF767676),
                                  ),
                                ),
                                Text(
                                  "16 Jan 2021 at 15:00",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFFc4c4c4),
                                  ),
                                ),
                              ],
                            )
                          : Text(
                              "Waiting Approval Manager",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF767676),
                              ),
                            ),
                ),
              ),
            ],
          ),
          status == "In Progress"
              ? Padding(
                  padding: EdgeInsets.only(bottom: 38.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => DeclinePopUp(),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Decline",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF767676),
                              ),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Color(0xff767676),
                              width: 1,
                            ),
                          ),
                          primary: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/SK_process1');
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Notify Manager",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            // side: BorderSide(
                            //   color: Colors.white,
                            //   width: 1,
                            // ),
                          ),
                          primary: Color(0xff767676),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
