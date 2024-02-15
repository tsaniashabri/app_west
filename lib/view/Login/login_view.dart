import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObsecure = true;

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    // final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: new Container(
                height: 120,
                // width: MediaQuery.of(context).size.width * 0.7,
                width: 250,
                color: Color(0xffc4c4c4),
                child: Center(child: Text("WEST Logo")),
              ),
            ),
            new Text(
              "Login to WEST",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    "Username",
                    style: TextStyle(
                      color: Color(0xff767676),
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
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
                      hintText: 'Enter your username here',
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
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
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xff767676),
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 54,
                  child: new TextFormField(
                    // key: _formKey2,
                    obscureText: _isObsecure,
                    textAlignVertical: TextAlignVertical.bottom,
                    autofocus: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Password',
                      prefixIcon:
                          Icon(Icons.lock_outline, color: Color(0xff767676)),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObsecure
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Color(0xff767676),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObsecure = !_isObsecure;
                            });
                          }),
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
                    //     return "Anda belum mengisi password";
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/reset_pass');
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          color: Color(0xff767676),
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
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
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Center(
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Version 2.0",
                style: TextStyle(
                  color: Color(0xff767676),
                  fontFamily: "Roboto",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Copyright © PT. Waskita Karya (Persero) Tbk.",
                style: TextStyle(
                  color: Color(0xff767676),
                  fontFamily: "Roboto",
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
