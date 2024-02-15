import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  const Reset({Key key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: new AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            iconSize: 20,
            color: Color(0xFF767676),
          ),
          title: new Text(
            "Reset Password",
            style: TextStyle(
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF767676),
            ),
          ),
          backgroundColor: Color(0xfff3f3f3),
        ),
        body: new Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35),
          //padding: EdgeInsets.only(top: 20, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                "Reset Password",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color(0xFF767676),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 60),
                child: new Text(
                  "Enter the email associated with your account and we'll send an email with 'Reset Code' to reset your password.",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: new Text(
                  "Email Address",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
              SizedBox(
                height: 54,
                child: new TextFormField(
                  // key: _formKey,
                  textAlignVertical: TextAlignVertical.bottom,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter your email here',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xff767676),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0xff767676),
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                    filled: true,
                    fillColor: Color(0xfff3f3f3),
                  ),
                  // validator: (String value) {
                  //   if (value.isEmpty || value == null) {
                  //     return "Anda belum mengisi username";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 38.0),
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
                        // side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // if (_formKey.currentState.validate() &&
                    //     _formKey2.currentState.validate()) {}
                    Navigator.pushNamed(context, '/verify_code');
                  },
                  child: Center(
                    child: Text(
                      'Send Reset Code',
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
    );
  }
}
