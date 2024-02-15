import 'package:aplikasi_west/view/OnBoarding%20Screen/onBoardingScreen3_view.dart';
import 'package:aplikasi_west/view/OnBoarding%20Screen/onBoardingScreen4_view.dart';
import 'package:aplikasi_west/view/SuratKeterangan/SKprocess_cenceledSDM.dart';
import 'package:aplikasi_west/view/SuratKeterangan/SKprocess_notifySDM.dart';
import 'package:aplikasi_west/view/SuratKeterangan/historySK_view.dart';
import 'package:aplikasi_west/view/Request/SKprocess1_view.dart';
import 'package:aplikasi_west/view/Request/SKprocess2_view.dart';
import 'package:aplikasi_west/view/Request/SKprocess_view.dart';
import 'package:aplikasi_west/view/Home/payslip_view.dart';
import 'package:aplikasi_west/view/Request/requestProcess_view.dart';
import 'package:aplikasi_west/view/Reset%20and%20New%20Pass/newPassCreated_view.dart';
import 'package:aplikasi_west/view/Announcement/announcement_detail_view.dart';
import 'package:aplikasi_west/view/Announcement/announcement_view.dart';
import 'package:aplikasi_west/view/Clock%20In%20Clock%20Out/clockin_alt1_view.dart';
import 'package:aplikasi_west/view/Clock%20In%20Clock%20Out/clockin_view.dart';
import 'package:aplikasi_west/view/Clock%20In%20Clock%20Out/clockout_alt1_view.dart';
import 'package:aplikasi_west/view/Clock%20In%20Clock%20Out/clockout_view.dart';
import 'package:aplikasi_west/view/Reset%20and%20New%20Pass/createNewPass_view.dart';
import 'package:aplikasi_west/view/Home/home.dart';
import 'package:aplikasi_west/view/Profile/infopersonal_view.dart';
import 'package:aplikasi_west/view/Notification/notification_view.dart';
import 'package:aplikasi_west/view/OnBoarding%20Screen/onBoardingScreen1_view.dart';
import 'package:aplikasi_west/view/Attendance/attendance_view.dart';
import 'package:aplikasi_west/view/Reset%20and%20New%20Pass/reset_view.dart';
import 'package:aplikasi_west/view/Login/login_view.dart';
import 'package:aplikasi_west/view/OnBoarding%20Screen/onBoardingScreen2_view.dart';
import 'package:aplikasi_west/view/Reset%20and%20New%20Pass/verify_code.dart';
import 'package:aplikasi_west/view/Clock%20In%20Clock%20Out/wfh_view.dart';
import 'package:aplikasi_west/view/SuratKeterangan/suratKeterangan_view.dart';
import 'package:aplikasi_west/view/OnBoarding%20Screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WestApp());
}

class WestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WEST',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/onboarding_screen1': (BuildContext context) => OnBoardingScreen1(),
        '/onboarding_screen2': (BuildContext context) => OnBoardingScreen2(),
        '/onboarding_screen3': (BuildContext context) => OnBoardingScreen3(),
        '/onboarding_screen4': (BuildContext context) => OnBoardingScreen4(),
        '/login': (BuildContext context) => Login(),
        '/reset_pass': (BuildContext context) => Reset(),
        '/verify_code': (BuildContext context) => VerifyCode(),
        '/create_new_pass': (BuildContext context) => CreateNewPass(),
        '/new_pass_created': (BuildContext context) => NewPassCreated(),
        '/home': (BuildContext context) => Home(0),
        '/notification': (BuildContext context) => NotificationView(),
        '/clock_in': (BuildContext context) => ClockIn(),
        '/clock_out': (BuildContext context) => ClockOut(),
        '/wfh': (BuildContext context) => WFH(),
        '/clock_in_alt1': (BuildContext context) => ClockInAlt1(),
        '/clock_out_alt1': (BuildContext context) => ClockOutAlt1(),
        '/announcement': (BuildContext context) => Announcement(),
        '/announcement_detail': (BuildContext context) => DetailAnnouncement(),
        '/payslip': (BuildContext context) => Payslip(),
        '/request_process': (BuildContext context) => RequestProcess(),
        '/my_request': (BuildContext context) => Home(1),
        '/surat_keterangan': (BuildContext context) => SuratKeterangan(),
        '/history_SK': (BuildContext context) => HistorySK(),
        '/SK_process': (BuildContext context) => SKprocess(),
        '/SK_process1': (BuildContext context) => SKprocess1(),
        '/SK_process2': (BuildContext context) => SKprocess2(),
        '/SK_process_notifySDM': (BuildContext context) => SKprocessNotifySDM(),
        '/SK_process_canceledSDM': (BuildContext context) =>
            SKprocessCanceledSDM(),
        '/attendance': (BuildContext context) => Attendance(),
        '/info_personal': (BuildContext context) => InfoPersonal(),
      },
    );
  }
}
