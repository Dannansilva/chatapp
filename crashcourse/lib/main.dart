import 'package:crashcourse/page/home_page.dart';
import 'package:crashcourse/page/login_page.dart';
import 'package:crashcourse/styles/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => Loginpage(),
        '/home':(context) => HomePage(),
      },
    );
  }
}
