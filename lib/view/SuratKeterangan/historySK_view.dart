import 'package:aplikasi_west/view/SuratKeterangan/detail_SK.dart';
import 'package:flutter/material.dart';

class HistorySK extends StatefulWidget {
  const HistorySK({Key key}) : super(key: key);

  @override
  State<HistorySK> createState() => _HistorySKState();
}

class _HistorySKState extends State<HistorySK> {
  List<String> jenisSK = [
    "Surat Kesehatan",
    "Surat Keterangan Gaji",
    "Surat Pengajuan Visa",
    "Surat Keterangan Kerja"
  ];
  List<String> status = [
    "In Progress",
    "Canceled",
    "Approved",
    "Approved",
  ];
  List<Color> statusColor = [
    Color(0xffff8800),
    Color(0xffff4a4a),
    Color(0xff51ce2c),
    Color(0xff51ce2c),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff767676),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'Surat Keterangan',
          style: TextStyle(
            color: Color(0xff767676),
            fontFamily: "Roboto",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Color(0xff767676),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(top: 24, right: 36, bottom: 10),
              width: 65,
              height: 14,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerRight,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.filter_list,
                      color: Color(0xFF767676),
                      size: 15,
                    ),
                    Text(
                      "Newest",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF767676),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 26),
                child: MaterialButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/detail_SK');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailSK(jenisSK[i], status[i])));
                  },
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 80,
                    // padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(0, 1),
                                  color: Color(0x1a000000),
                                )
                              ]),
                          child: new Icon(
                            i == 0
                                ? Icons.medical_services
                                : i == 1
                                    ? Icons.monetization_on
                                    : i == 2
                                        ? Icons.credit_card
                                        : Icons.work,
                            color: Color(0xff767676),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: new Text(
                              jenisSK[i],
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFF767676),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text(
                                status[i],
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.italic,
                                  color: statusColor[i],
                                ),
                              ),
                              new Text(
                                "17 Jan 2021",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFF767676),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1a000000),
                            blurRadius: 10,
                            offset: Offset(3, 4),
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
