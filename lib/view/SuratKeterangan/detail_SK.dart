import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'decline_detailSK_view.dart';

class DetailSK extends StatefulWidget {
  final String jenisSK, status;
  DetailSK(this.jenisSK, this.status);
  @override
  _DetailSKState createState() => _DetailSKState(jenisSK, status);
}

class _DetailSKState extends State<DetailSK> {
  String jenisSK, status;
  _DetailSKState(this.jenisSK, this.status);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff3f3f3),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff767676),
          ),
        ),
        title: Text(
          "Detail Surat Keterangan",
          style: TextStyle(
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF767676),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.075,
        ),
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.all(26),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffe5e5e5),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 33),
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
                      jenisSK == "Surat Kesehatan"
                          ? Icons.medical_services
                          : jenisSK == "Surat Keterangan Gaji"
                              ? Icons.monetization_on
                              : jenisSK == "Surat Pengajuan Visa"
                                  ? Icons.credit_card
                                  : Icons.work,
                      color: Color(0xff767676),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jenisSK,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF767676),
                          ),
                        ),
                        Text(
                          "ID Request : SKK-170121",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF767676),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Detail Request",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: status == "In Progress"
                        ? Color(0xFFFF8800)
                        : status == "Canceled"
                            ? Color(0xffff4a4a)
                            : Color(0xff51ce2c),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Requester",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Dimas Setyawan",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Approver",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "SDM Waskita Precast",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Color(0xffe5e5e5), width: 1),
            )),
            child: Text(
              "Informasi Surat Kesehatan",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Color(0xFF767676),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Nama Rumah Sakit",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Rumah Sakit Warna Bhakti",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Alamat Rumah Sakit",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Jl. Kartini No 231, Jakarta Barat, Indonesia",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Threatment",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Rawat Inap",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Fasilitas Perawatan",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Kelas 1",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Pasien",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFFc4c4c4),
                    ),
                  ),
                ),
                Text(
                  "Dimas Setyawan",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF767676),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18),
            margin: EdgeInsets.only(top: 10),
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xffe5e5e5), width: 1),
              ),
            ),
            child: Text(
              "Progress",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Color(0xFF767676),
              ),
            ),
          ),
          Column(
            children: [
              TimelineTile(
                afterLineStyle: LineStyle(color: Color(0xffc4c4c4)),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 40,
                  color: Color(0xffc4c4c4),
                  drawGap: true,
                  // iconStyle: IconStyle(iconData: IconData())
                  indicator: Icon(
                    Icons.check_circle_rounded,
                    color: Color(0xffc4c4c4),
                    size: 25,
                  ),
                ),
                isFirst: true,
                endChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Request Send",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF767676),
                      ),
                    ),
                    Text(
                      "16 Jan 2021 at 14:00",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFFc4c4c4),
                      ),
                    ),
                  ],
                ),
              ),
              TimelineTile(
                beforeLineStyle: LineStyle(color: Color(0xffc4c4c4)),
                indicatorStyle: IndicatorStyle(
                  width: 50,
                  height: 40,
                  color: Color(0xffc4c4c4),
                  drawGap: true,
                  indicator: Icon(
                    status == "Approved" || status == "Canceled"
                        ? Icons.check_circle_rounded
                        : Icons.radio_button_checked,
                    color: Color(0xffc4c4c4),
                    size: 25,
                  ),
                ),
                isLast: true,
                endChild: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 44.0),
                  child: status == "Approved"
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SDM Approved",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF767676),
                              ),
                            ),
                            Text(
                              "16 Jan 2021 at 15:00",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFFc4c4c4),
                              ),
                            ),
                          ],
                        )
                      : status == "Canceled"
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Request Canceled",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xFF767676),
                                  ),
                                ),
                                Text(
                                  "16 Jan 2021 at 15:00",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFFc4c4c4),
                                  ),
                                ),
                              ],
                            )
                          : Text(
                              "Waiting Approval SDM",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF767676),
                              ),
                            ),
                ),
              ),
            ],
          ),
          status == "In Progress"
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return DeclineDetailSK();
                            },
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Decline",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF767676),
                              ),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Color(0xff767676),
                              width: 1,
                            ),
                          ),
                          primary: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/SK_process_notifySDM');
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Notify SDM",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          primary: Color(0xff767676),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
