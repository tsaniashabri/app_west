import 'package:flutter/material.dart';

class SKprocess extends StatefulWidget {
  const SKprocess({Key key}) : super(key: key);

  @override
  State<SKprocess> createState() => _SKprocessState();
}

class _SKprocessState extends State<SKprocess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.2),
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
                      Color(0xff51ce2c),
                      Color(0xFF3aaa19),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Color(0xff51ce2c),
                      offset: Offset.zero,
                    )
                  ]),
              child: Center(
                child: Icon(
                  Icons.check_rounded,
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
                    "Congratulation",
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
                    "Your request has send. Staff SDM will get notification and respon your request.",
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
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size.fromHeight(50),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xff767676),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/history_SK');
                },
                child: Center(
                  child: Text(
                    'See My Request',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
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
