import 'package:flutter/material.dart';

class SKSehat extends StatefulWidget {
  const SKSehat({Key key}) : super(key: key);

  @override
  State<SKSehat> createState() => _SKSehatState();
}

class _SKSehatState extends State<SKSehat> {
  List _treathment = ['Rawat Inap', 'Rawat Jalan'];
  List _pasien = ['Pasien A', 'Pasien B'];
  var jenisRawat, pilihPasien;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 12),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  "SURAT KESEHATAN",
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
                  "Nama Rumah Sakit/Puskesmas",
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
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xfff3f3f3),
                ),
                child: Center(
                  child: new TextFormField(
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
                      hintText: 'Nama rumah sakit / puskesmas',
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Alamat Rumah Sakit/Puskesmas",
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
                    hintText: 'Masukkan alamat rumah sakit/puskesmas',
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
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Treathment",
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
                          jenisRawat = value;
                        });
                      },
                      underline: Container(),
                      value: jenisRawat,
                      hint: Text(
                        'Pilih Jenis Rawat',
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
                      items: _treathment
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
                  "Fasilitas Perawatan",
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
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xfff3f3f3),
                ),
                child: Center(
                  child: new TextFormField(
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
                      hintText: 'Masukkan fasilitas perawatan',
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 8),
                child: Text(
                  "Pasien",
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
                          pilihPasien = value;
                        });
                      },
                      underline: Container(),
                      value: pilihPasien,
                      hint: Text(
                        'Pilih Pasien',
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
                      items: _pasien
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
                    Navigator.pushReplacementNamed(context, '/SK_process');
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
