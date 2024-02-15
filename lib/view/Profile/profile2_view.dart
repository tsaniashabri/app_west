import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Color(0xFF767676),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width * 0.9,
              height: 173,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff3f3f3),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff767676),
                        radius: 35,
                      ),
                      Text(
                        "Hello, Dimas Setyawan",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF767676),
                        ),
                      ),
                      Text(
                        "Manager Perencanaan & Pengembangan HC",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xFF767676),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "General",
              style: TextStyle(
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color(0xFF767676),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/info_personal');
              },
              height: 50,
              color: Color(0xfff3f3f3),
              padding: EdgeInsets.symmetric(horizontal: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Info Personal",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF767676),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff767676),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              height: 50,
              color: Color(0xfff3f3f3),
              padding: EdgeInsets.symmetric(horizontal: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Info Pekerjaan",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF767676),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff767676),
                  ),
                ],
              ),
            ),
            Text(
              "Keamanan",
              style: TextStyle(
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color(0xFF767676),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              height: 50,
              color: Color(0xfff3f3f3),
              padding: EdgeInsets.symmetric(horizontal: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ubah Password",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF767676),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff767676),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {},
                  height: 50,
                  color: Color(0xfff3f3f3),
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Informasi IMEI",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF767676),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff767676),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "Version 2.0",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (Route<dynamic> route) => false);
                },
                child: Text(
                  "LOGOUT",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff767676),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
