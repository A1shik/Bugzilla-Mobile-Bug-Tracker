import 'package:bug_tracker/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracker/widgets/login/custombutton.dart';
import 'package:bug_tracker/widgets/login/inputfield.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppColors.COLOR_TWO,
                borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 40,
          ),
          Button()
        ],
      ),
    );
  }
}
