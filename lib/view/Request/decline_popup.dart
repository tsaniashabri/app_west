import 'package:flutter/material.dart';

class DeclinePopUp extends StatefulWidget {
  @override
  _DeclinePopUpState createState() => _DeclinePopUpState();
}

class _DeclinePopUpState extends State<DeclinePopUp> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Center(
        child: Text("Are sure want to decline ?"),
      ),
      titleTextStyle: TextStyle(
        fontFamily: "Roboto",
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color(0xFF767676),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children: [
            Text(
              "You request will be cancelled.",
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 46.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.pushReplacementNamed(context, '/detail_absen');
                    },
                    child: Container(
                      width: 120,
                      height: 48,
                      child: Center(
                        child: Text(
                          "No",
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
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          width: 2,
                          color: Color(0xffc4c4c4),
                        ),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 46.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/SK_process2');
                    },
                    child: Container(
                      width: 120,
                      height: 48,
                      child: Center(
                        child: Text(
                          "Yes",
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
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Color(0xff767676),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      contentTextStyle: TextStyle(
        fontFamily: "Roboto",
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Color(0xFF767676),
      ),
    );
  }
}
