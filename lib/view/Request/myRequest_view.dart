import 'package:aplikasi_west/view/Request/detail_request_view.dart';
import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class MyRequest extends StatefulWidget {
  const MyRequest({Key key}) : super(key: key);

  @override
  State<MyRequest> createState() => _MyRequestState();
}

class _MyRequestState extends State<MyRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        title: Text(
          "My Request",
          style: TextStyle(
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(top: 24, right: 36, bottom: 10),
              width: 65,
              height: 14,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerRight,
                ),
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
              itemCount: 6,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 26),
                child: MaterialButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/detail_absen');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          switch (i) {
                            case 0:
                              return DetailRequest("Absen", "In Progress");
                            case 1:
                              return DetailRequest("Cuti", "Approved");
                            case 2:
                              return DetailRequest("Absen", "Approved");
                            default:
                              return DetailRequest("Absen", "Canceled");
                          }
                        },
                      ),
                    );
                  },
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 80,
                    // padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                color: Color(0x1a000000),
                              )
                            ],
                          ),
                          child: new Icon(
                            i == 1 ? Icons.event_note : Icons.work_off,
                            color: Color(0xff767676),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  i == 1 ? "Cuti" : "Absen",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xFF767676),
                                  ),
                                ),
                                new Text(
                                  i == 1
                                      ? "Alasan : Cuti"
                                      : "Alasan : Perjalanan Dinas",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xFF767676),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text(
                                i == 0
                                    ? "In Progress"
                                    : i == 1 || i == 2
                                        ? "Approved"
                                        : "Canceled",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.italic,
                                  color: i == 0
                                      ? Color(0xffff8800)
                                      : i == 1 || i == 2
                                          ? Color(0xff51CE2C)
                                          : Color(0xFFFF4A4A),
                                ),
                              ),
                              new Text(
                                Waktu(DateTime(2021, 1, 17)).format("dd MMM y"),
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFF767676),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1a000000),
                          blurRadius: 10,
                          offset: Offset(3, 4),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
