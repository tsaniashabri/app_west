import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class Reimbursement extends StatefulWidget {
  const Reimbursement({Key key}) : super(key: key);

  @override
  State<Reimbursement> createState() => _ReimbursementState();
}

class _ReimbursementState extends State<Reimbursement> {
  List _reimburse = ['Kacamata', 'Lainnya'];
  List _applicant = ['Applicant 1', 'Lainnya'];
  List _medical = ['Patah', 'Lainnya'];

  var jenisReimburse, pilihApplicant, medicalReason;

  TextEditingController tglKwitansiController = TextEditingController();
  @override
  void initState() {
    tglKwitansiController.text = "Pilih tanggal";
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
                  "REIMBURSEMENT",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.85,
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24.0, bottom: 8),
                      child: Text(
                        "Jenis Reimburse",
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
                                jenisReimburse = value;
                              });
                            },
                            underline: Container(),
                            value: jenisReimburse,
                            hint: Text(
                              'Pilih jenis reimburse',
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
                            items: _reimburse
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
                        "Applicant",
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
                                pilihApplicant = value;
                              });
                            },
                            underline: Container(),
                            value: pilihApplicant,
                            hint: Text(
                              'Pilih applicant',
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
                            items: _applicant
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
                      padding: EdgeInsets.only(top: 24.0),
                      child: Row(
                        children: [
                          DottedBorder(
                            padding: EdgeInsets.zero,
                            dashPattern: [8, 8],
                            strokeWidth: 2,
                            radius: Radius.circular(8),
                            borderType: BorderType.RRect,
                            color: Color(0xffc4c4c4),
                            child: Container(
                              width: 200,
                              height: 54,
                              child: MaterialButton(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.cloud_upload,
                                      color: Color(0xffc4c4c4),
                                    ),
                                    Text(
                                      "Upload Kwitansi",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff767676),
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    )
                                  ],
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        title: Text(
                                            'Please choose media to select'),
                                        content: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              9,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.camera_alt,
                                                  color: Color(0xff767676),
                                                ),
                                                label: Text(
                                                  'From Camera',
                                                  style: TextStyle(
                                                    color: Color(0xff767676),
                                                  ),
                                                ),
                                              ),
                                              TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.image,
                                                  color: Color(0xff767676),
                                                ),
                                                label: Text(
                                                  'From Gallery',
                                                  style: TextStyle(
                                                    color: Color(0xff767676),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.0, bottom: 8),
                      child: Text(
                        "Tgl Kwitansi",
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
                          controller: tglKwitansiController,
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
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 25.0),
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
                                tglKwitansiController.text =
                                    Waktu(pickedDate).format('dd/MM/yyyy');
                              });
                            } else {
                              tglKwitansiController.text = "Pilih tanggal";
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24.0, bottom: 8),
                      child: Text(
                        "No Kwitansi",
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 25.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Masukkan nomor kwitansi',
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
                        "Medical Reason",
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
                                medicalReason = value;
                              });
                            },
                            underline: Container(),
                            value: medicalReason,
                            hint: Text(
                              'Pilih medical reason',
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
                            items: _medical
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
                        "Value",
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 25.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Masukkan jumlah pembayaran',
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
                        "Keterangan",
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
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Masukkan keterangan',
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/request_process');
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
          ),
        ),
      ],
    );
  }
}
