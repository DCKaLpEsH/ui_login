import 'package:flutter/material.dart';

import 'curve_painter.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // body: Column(
      // children: [
      // Container(
      // color: Colors.white,
      height: 350,
      // width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF454575),
              Color(0xFFAF4AA1),
            ]),
      ),
      child: CustomPaint(
        painter: CurvePainter(),
      ),
      // ),
      // ],
      // ),
    );
  }
}
