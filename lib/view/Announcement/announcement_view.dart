import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class Announcement extends StatefulWidget {
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xfff3f3f3),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 20,
          color: Color(0xFF767676),
        ),
        title: Text(
          "Announcement",
          style: TextStyle(
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF767676),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) => MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, '/announcement_detail');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xFFe5e5e5),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFC4C4C4),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.textsms,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                i == 0
                                    ? "WEST 2.0 has been update"
                                    : "WEST Go Live",
                                style: TextStyle(
                                  color: Color(0xFF767676),
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Roboto",
                                  fontWeight: i == 0
                                      ? FontWeight.w700
                                      : FontWeight.w400,
                                ),
                              ),
                              Text(
                                i == 0
                                    ? Waktu(DateTime(2021, 1, 17))
                                        .format('dd MMM y')
                                    : Waktu(DateTime(2021, 1, 4))
                                        .format('dd MMM y'),
                                style: TextStyle(
                                  color: Color(0xFF767676),
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Roboto",
                                  fontWeight: i == 0
                                      ? FontWeight.w700
                                      : FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          i == 0
                              ? "The app have simplified the way remote teams can stay accountable."
                              : "WEST App and web will go live now and employee can use it.",
                          style: TextStyle(
                            color: Color(0xFF767676),
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Roboto",
                            fontWeight:
                                i == 0 ? FontWeight.w700 : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
