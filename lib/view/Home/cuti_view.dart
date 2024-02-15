import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class Cuti extends StatefulWidget {
  const Cuti({Key key}) : super(key: key);

  @override
  State<Cuti> createState() => _CutiState();
}

class _CutiState extends State<Cuti> {
  List _options = ['Hamil', 'Lainnya'];
  List _pengganti = ['Pegawai A', 'Pegawai B'];
  var jenisCuti, pilihPeagawai;

  TextEditingController beginDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  @override
  void initState() {
    beginDateController.text = "Pilih tanggal";
    endDateController.text = "Pilih tanggal";
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
                  "CUTI",
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
                  "Jenis Cuti",
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
                          jenisCuti = value;
                        });
                      },
                      underline: Container(),
                      value: jenisCuti,
                      hint: Text(
                        'Pilih cuti anda',
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
                      items: _options
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
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Begin Date",
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
                    controller: beginDateController,
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
                          beginDateController.text =
                              Waktu(pickedDate).format('d MMMM y');
                        });
                      } else {
                        beginDateController.text = "Pilih tanggal";
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "End Date",
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
                    controller: endDateController,
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
                          endDateController.text =
                              Waktu(pickedDate).format('d MMMM y');
                        });
                      } else {
                        endDateController.text = "Pilih tanggal";
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Pengganti",
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
                          pilihPeagawai = value;
                        });
                      },
                      underline: Container(),
                      value: pilihPeagawai,
                      hint: Text(
                        'Pilih pegawai anda',
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
                      items: _pengganti
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
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Alasan",
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
                height: 108,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xfff3f3f3),
                ),
                child: new TextFormField(
                  maxLines: 3,
                  textAlignVertical: TextAlignVertical.top,
                  autofocus: false,
                  style: TextStyle(
                    color: Color(0xff767676),
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Masukkan alasan cuti anda',
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
