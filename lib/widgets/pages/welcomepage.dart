import 'package:bug_tracker/helpers/iconhelper.dart';
import 'package:bug_tracker/widgets/icons/iconfont.dart';
import 'package:bug_tracker/widgets/login/loginpage.dart';
import 'package:bug_tracker/widgets/pages/accountlistpage.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracker/helpers/appcolors.dart';
import 'package:bug_tracker/widgets/pages/ticketlistpage.dart';

class WelcomePage extends StatelessWidget {
  final ButtonStyle myButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    backgroundColor: AppColors.MAIN_COLOR,
    elevation: 16,
    shadowColor: Colors.blue,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.all(25),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
              child: Opacity(
                  opacity: 0.8,
                  child: Image.asset('assets/imgs/background.jpg',
                      fit: BoxFit.cover))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: AppColors.MAIN_COLOR,
                      alignment: Alignment.center,
                      child: IconFont(
                        color: Colors.white,
                        iconName: IconFontHelper.mainLogo,
                        size: 70,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('BugZilla',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Bug tracking and\nagile project management.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('Login', style: TextStyle(fontSize: 20)),
                    style: myButtonStyle,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.white.withOpacity(0.2),
                        highlightColor: Colors.white.withOpacity(0.2),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TicketList()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Text(
                            'View Tickets',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.blue.withOpacity(0.2),
                                  blurRadius: 20.0,
                                ),
                              ],
                              border: Border.all(
                                  color: AppColors.MAIN_COLOR, width: 4)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
