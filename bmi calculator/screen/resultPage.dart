import 'package:bmi2/components/bottom_button.dart';
import 'package:bmi2/constants.dart';
import 'package:bmi2/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your Result",
              style: KTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
              child: ResuableCard(
                  color: KactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: KResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: KBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: KBodyTextStyle,
                      )
                    ],
                  ))),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATOR")
        ],
      ),
    );
  }
}
