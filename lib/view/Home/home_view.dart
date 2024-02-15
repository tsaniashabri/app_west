import 'package:aplikasi_west/view/Home/absence_view.dart';
import 'package:aplikasi_west/view/Home/changeShift_view.dart';
import 'package:aplikasi_west/view/Home/reimbursement_view.dart';
import 'package:aplikasi_west/view/Home/cuti_view.dart';
import 'package:aplikasi_west/view/Home/lembur_view.dart';
import 'package:flutter/material.dart';
import 'package:format_indonesia/format_indonesia.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Good Morning.",
          style: TextStyle(
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Color(0xFF767676),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/notification');
            },
            color: Color(0xFFE5E5E5),
          ),
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                margin: EdgeInsets.all(15),
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pushNamed(context, '/attendance');
                        },
                        icon: Icon(
                          Icons.schedule,
                          size: 17,
                          color: Color(0xFF767676),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 11.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            // maxRadius: 33,
                            backgroundColor: Color(0xFFC4C4C4),
                            radius: 16,
                          ),
                          Text(
                            "Dimas Setiawan",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF767676),
                            ),
                          ),
                          Text(
                            "Manager Perencanaan & Pengembangan HC",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color(0xFF767676),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "08:00",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 32,
                                color: Color(0xFF767676),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/clock_in');
                              },
                              // untuk mengakses clockin_alt1_view.dart dimisalkan menggunakan long press
                              onLongPress: () {
                                Navigator.pushNamed(context, '/clock_in_alt1');
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF767676),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 35,
                                  vertical: 11,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                              ),
                              child: Text(
                                "Clock In",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.white,
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
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            height: 200,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.work_off)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Absen();
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              ),
                            ),
                            isScrollControlled: true,
                          );
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Absence",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Color(0xFF767676)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.account_balance_wallet)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Reimbursement(),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              ),
                            ),
                            isScrollControlled: true,
                          );
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Reimbursement",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Color(0xFF767676)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.event_note)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Cuti(),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              ),
                            ),
                            isScrollControlled: true,
                          );
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Leave",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.hourglass_full)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Lembur();
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              ),
                            ),
                            isScrollControlled: true,
                          );
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Overtime",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.wifi_protected_setup)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return TukarShift();
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              ),
                            ),
                            isScrollControlled: true,
                          );
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Change Shift",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Color(0xFF767676)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.fact_check)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {},
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Appraisal",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.receipt)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {
                          Navigator.pushNamed(context, '/payslip');
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Payslip",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Center(child: Icon(Icons.insert_drive_file)),
                        iconSize: 20,
                        color: Color(0xFF767676),
                        padding: EdgeInsets.all(15),
                        onPressed: () {
                          Navigator.pushNamed(context, '/surat_keterangan');
                        },
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Text(
                      "Dokumen",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xFF767676),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160,
                  height: 80,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.account_balance_wallet,
                              color: Color(0xFF767676),
                              size: 13,
                            ),
                            Text(
                              "Reimbursement",
                              style: TextStyle(
                                color: Color(0xFF767676),
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Rp 3.000.000",
                          style: TextStyle(
                            color: Color(0xFF767676),
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                Container(
                  width: 160,
                  height: 80,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.event_note,
                              color: Color(0xFF767676),
                              size: 13,
                            ),
                            Text(
                              " Leave Quota",
                              style: TextStyle(
                                color: Color(0xFF767676),
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xFF767676),
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              " / 12 Days left",
                              style: TextStyle(
                                color: Color(0xFF767676),
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Announcement",
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 40,
                  height: 12,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerRight),
                    onPressed: () {
                      Navigator.pushNamed(context, '/announcement');
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xFF767676),
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, i) => MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pushNamed(context, '/announcement_detail');
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFC4C4C4),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.textsms,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  // mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      i == 0
                                          ? "WEST 2.0 has been update"
                                          : "WEST Go Live",
                                      style: TextStyle(
                                        color: Color(0xFF767676),
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Roboto",
                                        fontWeight: i == 0
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      i == 0
                                          ? Waktu(DateTime(2021, 1, 17))
                                              .format('dd MMM y')
                                          : Waktu(DateTime(2021, 1, 4))
                                              .format('dd MMM y'),
                                      style: TextStyle(
                                        color: Color(0xFF767676),
                                        fontSize: 12,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Roboto",
                                        fontWeight: i == 0
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                i == 0
                                    ? "The app have simplified the way remote teams can stay accountable."
                                    : "WEST App and web will go live now and employee can use it.",
                                style: TextStyle(
                                  color: Color(0xFF767676),
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Roboto",
                                  fontWeight: i == 0
                                      ? FontWeight.w700
                                      : FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
