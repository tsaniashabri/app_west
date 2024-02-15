import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class AttendanceDetail extends StatefulWidget {
  final String keterangan;
  AttendanceDetail(this.keterangan);
  @override
  _AttendanceDetailState createState() => _AttendanceDetailState(keterangan);
}

class _AttendanceDetailState extends State<AttendanceDetail> {
  String keterangan;
  _AttendanceDetailState(this.keterangan);
  TextEditingController clockInController = TextEditingController();
  TextEditingController clockOutController = TextEditingController();

  @override
  void initState() {
    clockInController.text = "07:50";
    clockOutController.text = "_ _:_ _";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 80,
                  height: 5,
                  margin: EdgeInsets.only(bottom: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0x33767676),
                  ),
                ),
              ),
              Center(
                child: Text(
                  Waktu(DateTime.now()).format('dd MMMM y').toUpperCase(),
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0, top: 24),
                    child: new Text(
                      "Karyawan",
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
                      textAlignVertical: TextAlignVertical.center,
                      autofocus: false,
                      style: TextStyle(
                        color: Color(0xff767676),
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Dimas Setyawan',
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
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 24),
                    child: new Text(
                      "Clock In",
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
                      controller: clockInController,
                      readOnly: true,
                      textAlignVertical: TextAlignVertical.center,
                      autofocus: false,
                      style: TextStyle(
                        color: Color(0xff767676),
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xfff3f3f3),
                        suffixIcon: Icon(
                          Icons.query_builder,
                          color: Color(0xff767676),
                        ),
                      ),
                      onTap: () async {
                        TimeOfDay pickedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if (pickedTime != null) {
                          setState(() {
                            clockInController.text = pickedTime
                                .format(context); //set the value of text field.
                          });
                        } else {
                          clockInController.text = "_ _:_ _";
                        }
                      },
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 24),
                    child: new Text(
                      "Clock Out",
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
                      controller: clockOutController,
                      textAlignVertical: TextAlignVertical.center,
                      readOnly: true,
                      autofocus: false,
                      style: TextStyle(
                        color: Color(0xff767676),
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xfff3f3f3),
                        suffixIcon: Icon(
                          Icons.query_builder,
                          color: Color(0xff767676),
                        ),
                      ),
                      onTap: () async {
                        TimeOfDay pickedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if (pickedTime != null) {
                          setState(() {
                            clockOutController.text =
                                pickedTime.format(context);
                          });
                        } else {
                          clockOutController.text = "_ _:_ _";
                        }
                      },
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 24),
                    child: new Text(
                      "Keterangan",
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
                      textAlignVertical: TextAlignVertical.center,
                      autofocus: false,
                      style: TextStyle(
                        color: Color(0xff767676),
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: keterangan,
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
              keterangan == "Absent"
                  ? Padding(
                      padding: EdgeInsets.only(top: 53.0, left: 38, right: 38),
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
                          // if (_formKey.currentState.validate() &&
                          //     _formKey2.currentState.validate()) {}
                          Navigator.pushNamed(context, '/request_process');
                        },
                        child: Center(
                          child: Text(
                            'Send Dispensasi',
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
                    )
                  : Container(
                      height: 100,
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
