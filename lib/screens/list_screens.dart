import 'package:connection_failed/screens/10_connection_lost.dart';
import 'package:connection_failed/screens/11_broken_link.dart';
import 'package:connection_failed/screens/2_404_error.dart';
import 'package:connection_failed/screens/5_something_wrong.dart';
import 'package:connection_failed/screens/6_error.dart';
import 'package:connection_failed/screens/7_error_2.dart';
import 'package:connection_failed/screens/8_404_error_2.dart';
import 'package:connection_failed/screens/9_location_access.dart';
import 'package:flutter/material.dart';

import '14_no_result_found.dart';
import '15_payment_faild.dart';
import '16_time_error.dart';
import '17_location_error.dart';
import '21_camera_access.dart';

class ListScreens extends StatelessWidget {
  static const id = 'list_screen';

  List<Widget> screenList = [
    Error404Screen(),
    Error404Screen2(),
    SomethingWrongScreen(),
    ErrorScreen(),
    Error2Screen(),
    LocationAccessScreen(),
    ConnectionLostScreen(),
    BrokenLinkScreen(),
    NoResultFoundScreen(),
    PaymentFaildScreen(),
    TimeErrorScreen(),
    LocationErrorScreen(),
    CameraAccessScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: screenList.length,
          itemBuilder: (context, index) {
            return screenList[index];
          }),
    );
  }
}
