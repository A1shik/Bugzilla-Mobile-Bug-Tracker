import 'package:flutter/material.dart';
import 'package:bug_tracker/widgets/pages/welcomepage.dart';
import 'package:bug_tracker/widgets/pages/splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        debugShowCheckedModeBanner: false,
        home: SplashPage(nextPage: WelcomePage(), duration: 2));
  }
}
