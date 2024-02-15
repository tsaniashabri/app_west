import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class Payslip extends StatefulWidget {
  const Payslip({Key key}) : super(key: key);

  @override
  State<Payslip> createState() => _PayslipState();
}

class _PayslipState extends State<Payslip> {
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
          "Payslip",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(top: 24, right: 36),
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
              itemCount: 15,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 36),
                child: Container(
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            Waktu(
                              DateTime.now().subtract(
                                Duration(days: i * 30),
                              ),
                            ).format('MMMM y'),
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF767676),
                            ),
                          ),
                          new Text(
                            Waktu(
                                  DateTime.now().subtract(
                                    Duration(days: (i + 1) * 30),
                                  ),
                                ).format('21 MMM y') +
                                " - " +
                                Waktu(
                                  DateTime.now().subtract(
                                    Duration(days: i * 30),
                                  ),
                                ).format('21 MMM y'),
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF767676),
                            ),
                          ),
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.cloud_download),
                        color: Color(0xff767676),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1,
                        color: Color(0xfff3f3f3),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1a000000),
                          blurRadius: 10,
                          offset: Offset(3, 4),
                        )
                      ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
