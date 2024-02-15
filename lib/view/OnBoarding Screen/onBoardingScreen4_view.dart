import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen4 extends StatefulWidget {
  @override
  _OnBoardingScreen4State createState() => _OnBoardingScreen4State();
}

class _OnBoardingScreen4State extends State<OnBoardingScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 38),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Color(0xFFC4C4C4),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 78),
            margin: EdgeInsets.symmetric(horizontal: 35),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Reporting and Dashboard",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      fontFamily: "Roboto",
                      color: Color(0xFF767676),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    padding: EdgeInsets.symmetric(vertical: 21),
                    child: Text(
                      "Pada fitur ini merupakan fitur advanced yang dapat diaktifkan pada aplikasi OKSIA, fitur advanced tersebut adalah fitur Personnel Development, Performance Management, Talent Management, Learning Management, Job Management.",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontFamily: "Roboto",
                        color: Color(0xFF767676),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 70),
                  child: DotsIndicator(
                    dotsCount: 4,
                    position: 3,
                    decorator: DotsDecorator(
                      color: Color(0xFFC4C4C4),
                      spacing: EdgeInsets.all(2),
                      size: Size.fromRadius(4),
                      activeSize: Size(16, 8),
                      activeColor: Color(0xFFC4C4C4),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color(0xFF767676),
                    shape: BoxShape.rectangle,
                    // border: Border.all(
                    //   color: Color(0xFFC4C4C4),
                    // ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/login', (Route<dynamic> route) => false);
                    },
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
