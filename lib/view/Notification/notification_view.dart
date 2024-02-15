import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class NotificationView extends StatefulWidget {
  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
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
          "Notification",
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
            icon: Icon(Icons.delete),
            onPressed: () {},
            color: Color(0xFF767676),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) => Container(
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
                Expanded(
                  child: Text(
                    "WEST App and web will go live now and employee can use it.",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontWeight: i == 0 ? FontWeight.w700 : FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF767676),
                    ),
                  ),
                ),
                Text(
                  Waktu(DateTime(2021, 1, 4)).format('dd MMM y'),
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontWeight: i == 0 ? FontWeight.w700 : FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF767676),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
