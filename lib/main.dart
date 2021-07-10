import 'package:flutter/material.dart';
import 'package:telkomsel_app/general/general_variables.dart';
import 'package:telkomsel_app/pages/splash_screen_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: GeneralVariables.primaryRedColor,
        primaryColorDark: GeneralVariables.primaryRedColor,
      ),
      home: SplashScreenPage(),
    );
  }
}
