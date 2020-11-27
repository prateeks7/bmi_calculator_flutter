import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.buttonTitle,@required this.ontap});

  final String buttonTitle;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(buttonTitle, style: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,

          ),),
        ),
        color: kbottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(bottom:10),
        padding: EdgeInsets.only(bottom: 20),
        height: kbottomContainerHeight,
      ),
    );
  }
}