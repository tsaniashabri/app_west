import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({Key key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(color: Color(0xff767676)),
              child: Center(child: Text("Gambar MAIL")),
            ),
            Column(
              children: [
                Text(
                  "Verification",
                  style: TextStyle(
                    color: Color(0XFF767676),
                    fontSize: 24,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter code we send on ",
                        style: TextStyle(
                          color: Color(0XFF767676),
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        "dima***********@waskita.co.id",
                        style: TextStyle(
                          color: Color(0XFF767676),
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (String value) {},
              keyboardType: TextInputType.number,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(14),
                fieldHeight: 60,
                fieldWidth: 60,
                activeFillColor: Colors.white,
                borderWidth: 2,
                activeColor: Color(0xfff3f3f3),
                inactiveColor: Color(0xfff3f3f3),
                selectedColor: Color(0xff767676),
              ),
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
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
                      Navigator.pushNamed(context, '/create_new_pass');
                    },
                    child: Center(
                      child: Text(
                        'Continue',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t Receive the email ?",
                      style: TextStyle(
                        color: Color(0xff767676),
                        fontFamily: "Roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend",
                          style: TextStyle(
                            color: Color(0xff767676),
                            fontFamily: "Roboto",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
