import 'package:flutter/material.dart';
import 'package:bug_tracker/widgets/icons/iconfont.dart';
import 'package:bug_tracker/helpers/iconhelper.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget nextPage;

  SplashPage({required this.nextPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.nextPage));
    });

    return Scaffold(
        body: Container(
            color: const Color(0xFF929EA0),
            alignment: Alignment.center,
            child: IconFont(
                color: Colors.white,
                iconName: IconFontHelper.mainLogo,
                size: 200)));
  }
}
