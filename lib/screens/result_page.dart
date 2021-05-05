import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import 'calculator_brain.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //ctrl+Q
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Your Result',
                      style: kTitleTextStyle,
                    ))),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
