import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, '/onboarding_screen1'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Stack(
            children: [
              // Kuning Bawah
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Color(0xfff3f645), Colors.transparent],
                      center: Alignment(0.75, 1.3),
                      radius: 2,
                      // focal: Alignment(0.0, -0.1),
                      // focalRadius: 1,
                    ),
                  ),
                ),
              ),
              // Ungu Atas
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Color(0xff070874), Colors.transparent],
                      center: Alignment(0.4, -0.65),
                      radius: 1.5,
                      // center: Alignment(0, -0.65),
                      // focalRadius: 0.2,
                    ),
                  ),
                ),
              ),
              // merah Kiri
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Color(0xffb60632), Colors.transparent],
                      center: Alignment(-0.95, 0.25),
                      radius: 1,
                      // focal: Alignment(0.0, -0.1),
                      // focalRadius: 1,
                    ),
                  ),
                ),
              ),
              // Kuning Kanan
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Color(0xfff3f645), Colors.transparent],
                      center: Alignment(1.5, 0.5),
                      radius: 1.5,
                      // focal: Alignment(0.0, -0.1),
                      // focalRadius: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Opacity(
              opacity: 0.5,
              child: Container(
                width: 250,
                height: 120,
                decoration: BoxDecoration(border: Border.all()),
                // color: Color(0xffc4c4c4),
                child: Center(
                  child: Text(
                    "Logo WEST",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 36.0),
                    child: Text(
                      'Version 2.0',
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ),
                  Text(
                    "Copyright © PT. Waskita Karya (Persero) Tbk.",
                    style: TextStyle(
                      color: Color(0xff767676),
                      fontFamily: "Roboto",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
