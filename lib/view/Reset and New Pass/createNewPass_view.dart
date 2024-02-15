import 'package:flutter/material.dart';

class CreateNewPass extends StatefulWidget {
  const CreateNewPass({Key key}) : super(key: key);

  @override
  State<CreateNewPass> createState() => _CreateNewPassState();
}

class _CreateNewPassState extends State<CreateNewPass> {
  bool _isObsecure = true;
  bool _isObsecure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 46),
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(
                    "Must be at least 8 charecters.",
                    style: TextStyle(
                      color: Color(0xff767676),
                      fontFamily: "Roboto",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 13),
                  child: new Text(
                    "Confirm Password",
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
                    obscureText: _isObsecure2,
                    textAlignVertical: TextAlignVertical.bottom,
                    autofocus: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObsecure2
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Color(0xff767676),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObsecure2 = !_isObsecure2;
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(
                    "Both password must be match.",
                    style: TextStyle(
                      color: Color(0xff767676),
                      fontFamily: "Roboto",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 31.0),
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
                  // if (_formKey.currentState.validate() &&
                  //     _formKey2.currentState.validate()) {}
                  Navigator.pushReplacementNamed(context, '/new_pass_created');
                },
                child: Center(
                  child: Text(
                    'Create New Password',
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
