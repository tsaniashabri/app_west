import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class TukarShift extends StatefulWidget {
  const TukarShift({Key key}) : super(key: key);

  @override
  State<TukarShift> createState() => _TukarShiftState();
}

class _TukarShiftState extends State<TukarShift> {
  List _schedule = ['Shift 1', 'Shift 2'];
  var workSchedule;

  TextEditingController dateController = TextEditingController();
  @override
  void initState() {
    dateController.text = "Pilih tanggal";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 12),
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
                  "TUKAR SHIFT",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Date",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
              SizedBox(
                height: 54,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: new TextFormField(
                    controller: dateController,
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
                      contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xfff3f3f3),
                      suffixIcon: Icon(
                        Icons.insert_invitation,
                        color: Color(0xff767676),
                      ),
                    ),
                    onTap: () async {
                      DateTime pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          dateController.text =
                              Waktu(pickedDate).format('dd/MM/yyyy');
                        });
                      } else {
                        dateController.text = "Pilih tanggal";
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Work Schedule",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
              Container(
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xfff3f3f3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: DropdownButton(
                      onChanged: (value) {
                        setState(() {
                          workSchedule = value;
                        });
                      },
                      underline: Container(),
                      value: workSchedule,
                      hint: Text(
                        'Pilih jenis work schedule',
                        style: TextStyle(
                          color: Color(0xff767676),
                          fontFamily: "Roboto",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      icon: Icon(Icons.arrow_drop_down),
                      isExpanded: true,
                      items: _schedule
                          .map(
                            (value) => DropdownMenuItem(
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff767676),
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              value: value,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
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
                    Navigator.pushReplacementNamed(context, '/request_process');
                  },
                  child: Center(
                    child: const Text(
                      'Send Request',
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
      ],
    );
  }
}
