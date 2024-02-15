import 'dart:async';
import 'package:flutter/material.dart';

class SKprocessCanceledSDM extends StatefulWidget {
  const SKprocessCanceledSDM({Key key}) : super(key: key);

  @override
  State<SKprocessCanceledSDM> createState() => _SKprocessCanceledSDMState();
}

class _SKprocessCanceledSDMState extends State<SKprocessCanceledSDM> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, '/history_SK'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0x73ff4a4a),
                      Color(0xffff6060),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Color(0xffff4a4a),
                      offset: Offset.zero,
                    )
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: new Text(
                      "Canceled",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: new Text(
                      "Your reference has been canceled. Staff SDM will get notification.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 38, horizontal: 36),
                child: SizedBox(
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
