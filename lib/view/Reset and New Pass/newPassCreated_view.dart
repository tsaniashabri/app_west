import 'package:flutter/material.dart';

class NewPassCreated extends StatefulWidget {
  const NewPassCreated({Key key}) : super(key: key);

  @override
  State<NewPassCreated> createState() => _NewPassCreatedState();
}

class _NewPassCreatedState extends State<NewPassCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xe5ffffff),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff767676),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Create New Password",
          style: TextStyle(
            color: Color(0xff767676),
            fontFamily: "Roboto",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Color(0xfff3f3f3),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Text(
              "New Password",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff222831),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: new Text(
                "Your new password must be different from previous used passwords.",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff767676),
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.width * 0.90,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x1a000000),
                      blurRadius: 10,
                      offset: Offset(0, 1),
                    )
                  ],
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      color: Color(0xff767676),
                      width: 70,
                      height: 145,
                      child: Center(
                        child: Text("Gambar"),
                      ),
                    ),
                    Column(
                      children: [
                        new Text(
                          "Congratulation",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff767676),
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: new Text(
                            "New password has been created.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff767676),
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // padding: EdgeInsets.symmetric(vertical: 39.0),
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size.fromHeight(50),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff767676),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/login',
                              (Route<dynamic> route) => false);
                        },
                        child: Center(
                          child: Text(
                            'Back to Login',
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
            ),
          ],
        ),
      ),
    );
  }
}
