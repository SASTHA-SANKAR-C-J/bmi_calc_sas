import 'package:bmi_calc_sas/view/input_page.dart';
import 'package:bmi_calc_sas/widgets/bottom_button.dart';
import 'package:bmi_calc_sas/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

const titleStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
const resultTextStyle = TextStyle(
    color: Color(0xFF24D876), fontSize: 22, fontWeight: FontWeight.bold);
const BMITextStyle = TextStyle(fontSize: 100, fontWeight: FontWeight.bold);
const bodyTextStyle = TextStyle(
  fontSize: 22,
);

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: titleStyle,
              ),
            )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: BMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              flex: 5,
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
