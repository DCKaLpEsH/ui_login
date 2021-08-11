import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/login_screen_2/login_screen_2.dart';
import 'package:login_ui/login_screen_3/login_screen_3.dart';

import 'login_screen_1/login_screen_1.dart';
import 'login_screen_3/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      theme: ThemeData(
// For Login Screen 1
        // primarySwatch: Colors.orange,
// For Login Screen 3
        primarySwatch: Colors.pink,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
        hintColor: Constants.kBlueGrey,
      ),
      home: const LoginScreen3(),
    );
  }
}
