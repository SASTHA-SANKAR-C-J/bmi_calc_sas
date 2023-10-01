import 'package:bmi_calc_sas/view/input_page.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
final Function onTap;
final String buttonTitle;
BottomButton({required this.onTap, required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        child: Center(
          child: Text(buttonTitle,style: TextStyle(
            fontSize: 25.0,fontWeight: FontWeight.bold
          ),),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        // padding: EdgeInsets.only(bottom: 20),
        height: ButtonHeight,
      ),
    );
  }
}